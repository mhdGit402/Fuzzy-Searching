<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\MergedUsers;

class User extends Model
{
    use HasFactory;

    protected $fillable = [
        'firstname',
        'lastname'
    ];

    public function mergedUsers(){
        return $this->hasMany(MergedUsers::class, 'user_id');
    }
}
