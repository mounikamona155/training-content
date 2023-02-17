const saveButton=document.querySelector('#btnsave');
const titleInput=document.querySelector('#title');
const descriptionInput=document.querySelector('#description');
const notescontainer=document.querySelector('.notes_container');
const deletButton=document.querySelector('#btnDelete')
const editButton=document.querySelector('#btnEdit')
function clearForm()
{
    titleInput.value='';
    descriptionInput.value='';
}
function displayNotesInForm(note)
{
    titleInput.value=note.title;
    descriptionInput.value=note.description;
    deletButton.classList.remove('hidden');
    editButton.classList.remove('hidden');
    deletButton.setAttribute('data-id',note.id);
    editButton.setAttribute('data-id',note.id);
}
function getNoteById(id)
{
    fetch(`https://localhost:7132/api/Notes/${id}`)
    .then(data=>data.json())
    .then(response=>displayNotesInForm(response));
}


function populateForm(id)
{
    getNoteById(id);
    
}

function addNote(title,description){

    const body={
        title:title,
        description:description,
        isVisible:true
    };
    fetch('https://localhost:7132/api/Notes',
    {
        method:'POST',
        body:JSON.stringify(body),
        headers:{
            "content-type":"application/json"
        }

    })
    .then(data=>data.json())
    .then(response => {
        clearForm();
        displayNotes();
    });
}
function updateNote(title,description){

    const body={
        title:title,
        description:description,
        isVisible:true
    };
    fetch('https://localhost:7132/api/Notes',
    {
        method:'PUT',
        body:JSON.stringify(body),
        headers:{
            "content-type":"application/json"
        }

    })
    .then(data=>data.json())
    .then(response => {
        clearForm();
        displayNotes();
    });
}

function displayNotes(notes)
{
    let allNotes='';
    
    notes.forEach( note => {
        const noteElement= `
        <div class="note" data-id="${note.id}">
            <h3>${note.title}</h3>
            <p>${note.description}</p>
        </div>
        `;
        allNotes+=noteElement;
        
    });
    notescontainer.innerHTML= allNotes;
    //add Even listeners

    document.querySelectorAll('.note').forEach(note =>
        note.addEventListener('click',function()
        {
           
           populateForm(note.dataset.id);
        }))
}

function getAllNotes(){
    fetch('https://localhost:7132/api/Notes')
    .then(data=>data.json())
    .then(response=>displayNotes(response));
}

getAllNotes();
saveButton.addEventListener('click',function()
{
    addNote(titleInput.value,descriptionInput.value);
});

function deleteNode(id)
{
    fetch(`https://localhost:7132/api/Notes/${id}`,{
        method:'DELETE',
        headers:
        {
            "content-type":"application/json"
        }
    })
    
    .then(response => {
        clearForm();
        getAllNotes();
    })

}
deletButton.addEventListener('click',function()
{
    const id=deletButton.dataset.id;
    deleteNode(id);
})
editButton.addEventListener('click',function()
{
    updateNote(id,titleInput.value,descriptionInput.value);
})