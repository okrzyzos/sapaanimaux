var btnDelete = document.querySelector("#btnDelete");

btnDelete.addEventListener("click", function() {
    event.preventDefault();
    var idAnimal = document.querySelector("#idAnimal").value;
    var nomAnimal = document.querySelector("#nom").value;
    if (confirm("Voulez-vous supprimer l'animal " + idAnimal + " - " + nomAnimal + " ?")) {
        document.location.href = "genererPensionnaireAdminSup&sup=" + idAnimal;
    }
});