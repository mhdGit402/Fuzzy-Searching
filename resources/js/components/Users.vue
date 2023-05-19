<template>
    <div style="padding:55px;margin-left:255px;margin-top: 55px;">
        <h4 class="mb-4" style="font-weight: bold;">Users Details:</h4>
        <p class="mt-3 mb-4">Note: If you are seeing any duplicate items, Please first
            <a href="/users/duplicate">Remove or Merge</a>
            items then revisit this page.
        </p>
        <button @click="exportPDF" type="button" class="btn btn-primary mt-2 mb-3">Export to PDF</button>
        <div class="card">
            <table class="table">
                <thead class="thead-light">
                    <tr>
                        <th scope="col">No.</th>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                    </tr>
                </thead>
                <tbody v-for="(item, index) in data">
                    <tr>
                        <td>{{ index + 1 }}</td>
                        <td>{{ item.firstname }}</td>
                        <td>{{ item.lastname }}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>

<script>
import html2pdf from 'html2pdf.js';
export default {
    name: 'Users',
    props: {
        data: Array
    },
    methods: {
        exportPDF() {

            let time = Date().slice(16, 21);

            let currentDate = new Date();
            let year = currentDate.toLocaleString("default", { year: "numeric" });
            let month = currentDate.toLocaleString("default", { month: "2-digit" });
            let day = currentDate.toLocaleString("default", { day: "2-digit" });
            let date = year + "_" + month + "_" + day;

            let element = document.querySelector('.card');

            html2pdf()
                .set({
                    filename: `Cleaned Dataset - ${date} - ${time}`,
                    margin: [1.1, 1, 0.7, 1],
                    image: { type: 'jpeg', quality: 1 },
                    html2canvas: { scale: 3 },
                    jsPDF: { unit: 'in', format: 'a3', orientation: 'landscape' }
                })
                .from(element)
                .toPdf()
                .get('pdf')
                .then(pdf => {
                    var totalPages = pdf.internal.getNumberOfPages();

                    for (let i = 1; i <= totalPages; i++) {
                        pdf.setPage(i);
                        pdf.setFontSize(12);
                        pdf.setTextColor(50);
                        pdf.text(pdf.internal.pageSize.getWidth() - 9,
                            pdf.internal.pageSize.getHeight() - 0.1 , ' Page ' + i + ' of ' + totalPages);

                        if(i == 1){
                            let img = new Image()
                            img.src = '/images/logo.png'
                            pdf.addImage(img, 'png', 13.1, 0.3, 3.1, 0.6);
                        }
                    }
                })
                .save();
        }
    }
}
</script>

<style scoped>
.card {
    border: none;
}

.thead-light {
    background-color: #c5c5c5;
}

a {
    text-decoration: none;
    /* margin-right:10px; */
}

p {
    font-weight: bold;
}

tbody:nth-child(odd) {
    background-color: #ededed;
}
button{
    width: 150px;
}
</style>