<?php

namespace App\Http\Controllers;

use App\Models\MergedUsers;
use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    public function index()
    {
        return view('createUser');
    }

    public function store(Request $request)
    {
        $formField['firstname'] = $request->firstname;
        $formField['lastname'] = $request->lastname;

        $data = User::create($formField);
        if (!$data) {
            return false;
        }
        return true;
    }

    public function showUsers(User $user)
    {
        $data = $user->get();
        return view('users', ['data' => $data]);
    }

    public function showDuplicateUsers(User $user)
    {

        $data = [];
        $final = [];
        $fi = [];

        $str1 = $user->get();

        foreach ($str1 as $item1) {
            foreach ($str1 as $item2) {
                $duplicate_First_Name = similar_text(strtolower($item1->firstname), strtolower($item2->firstname), $perc_First_Name);
                $duplicate_Last_Name = similar_text(strtolower($item1->lastname), strtolower($item2->lastname), $perc_Last_Name);

                if ($perc_First_Name >= 60 && $perc_Last_Name >= 35) {
                    array_push($data, [
                        'firstname1' => $item1->firstname, 'firstname2' => $item2->firstname,
                        $perc_First_Name, $duplicate_First_Name,
                        'lastname1' => $item1->lastname, 'lastname2' => $item2->lastname,
                        $perc_Last_Name, $duplicate_Last_Name,
                        'id1' => $item1->id, 'id2' => $item2->id,
                        'duplicate' => true
                    ]);
                } else {
                    array_push($data, [
                        $item1->firstname, $item2->firstname,
                        $item1->lastname, $item2->lastname,
                        'id1' => $item1->id, 'id2' => $item2->id,
                        'duplicate' => false
                    ]);
                }
            }
        }

        foreach ($data as $dup) {
            foreach ($data as $dup1) {
                if ($dup['duplicate'] === true && $dup1['duplicate'] === true) {
                    if ($dup['id1'] < $dup1['id1']) {
                        if ($dup['id1'] === $dup1['id2'] && $dup['id2'] === $dup1['id1']) {
                            array_push($final, $dup);
                        }
                    }
                }
            }
        }

        $id1 = [];
        $id2 = [];
        $finalID = [];
        foreach ($final as $fi) {
            array_push($id1, $fi['id1']);
            array_push($id2, $fi['id2']);
        }

        $final1 = [];
        $a = [];
        $b = [];
        $id1final = array_unique($id1);
        foreach ($id1final as $id) {
            $a = [];
            foreach ($final as $f) {
                if ($id === $f['id1']) {
                    array_push($a, [
                        'id' => $f['id2'],
                        'firstname' => $f['firstname2'],
                        'lastname' => $f['lastname2']
                    ]);
                    $b['firstname'] = $f['firstname1'];
                    $b['lastname'] = $f['lastname1'];
                }
            }
            array_push($final1, [
                'id' => $id,
                'firstname' => $b['firstname'],
                'lastname' => $b['lastname'],
                'value' => $a
            ]);
        }

        $b = [];
        $id2final = array_unique($id2);
        foreach ($final1 as $key => $value) {
            if (in_array($key, $id2final)) {
                array_push($b, [$key => $value]);
            }
        }

        $finalID = array_merge($id1, $id2);
        $finalID = array_unique($finalID);

        return view('duplicateUsers', [
            'data' => $data, 'final' => $final, 'fi' => $fi,
            'finalID' => $finalID,
            'final1' => $final1,
            'id2final' => $id2final,
            'b' => $b,
            'str1' => $str1
        ]);
    }


    public function removeUser($id)
    {
        $user = User::find($id);
        $user->delete();

        if (!$user) {
            return false;
        }
        return true;
    }

    public function mergeUser(Request $request)
    {

        foreach ($request->mergedIDs as $el) {
            $merge = User::query()
                ->where('id', $el)
                ->each(function ($oldRecord) use ($request) {
                    $newRecord = $oldRecord->replicate();
                    $newRecord->user_id = $request->mergeID;
                    $newRecord->setTable('merged_users');
                    $newRecord->save();
                    $oldRecord->delete();
                });
        }

        if ($merge) {
            return true;
        }
        return false;
    }

    public function mergedUsers(MergedUsers $mergedusers)
    {
        $mergedusers =  MergedUsers::with('user')->get();
        return view('mergedUsers', ['data' => $mergedusers]);
    }
}
