function change_display()
{
    if(document.getElementById('punch-in').style.display = 'block') {
        alert(11);
        document.getElementById('punch-in').style.display = 'none'
        document.getElementById('punch-out').style.display = 'block'
    }
};

function change_display1()
{
    if(document.getElementById('punch-out').style.display = 'block') {
        alert(12);
        document.getElementById('punch-out').style.display = 'none'
        document.getElementById('punch-in').style.display = 'block'
    }
};