<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

    <title>Patient</title>
</head>
<body>

<div class="container">
    <br>
    <br>
    <div class="jumbotron">
        <form class="form-horizontal" action="savePatient" method="post" modelAttribute="patientFormValues">
            <fieldset>
                <!-- Form Name -->
                <legend>Patient Quantity Input Form</legend>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="patientType">Select Basic</label>
                    <div class="col-md-4">
                        <select id="patientType" name="patientType" class="form-control">
                            <option value="OPD Patient">OPD Patient</option>
                            <option value="IPD Patient">IPD Patient</option>
                            <option value="OT Patient">OT Patient</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="patientQuentity">Patient Quantity</label>
                    <div class="col-md-4">
                        <input id="patientQuentity" name="patientQuentity" type="text" placeholder=""
                               class="form-control input-md">
                    </div>
                </div>
                <!-- Button -->
                <div class="form-group">
                    <div class="col-md-4">
                        <button id="submitButton" name="submitButton" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
        integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
        crossorigin="anonymous"></script>
</body>
</html>
