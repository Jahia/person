import $ from 'jquery';
import './lib/facybox';

function ShowHideLayer(boxID) {
    /* Obtain reference for the selected boxID layer and its button */
    var box = document.getElementById("collapseBox" + boxID);

    /* If the selected box is currently invisible, show it */
    if (box.style.display == "none" || box.style.display == "") {
        box.style.display = "block";
    }
    /* otherwise hide it */
    else {
        box.style.display = "none";
    }
}

export function init(currentNodeId) {
    $(document).ready(() => {
        console.info('Initializing js for person module');
        /* This is basic - uses default settings */

        $("a#single_image").fancybox();

        /* Using custom settings */

        $("a#apict${currentNode.identifier}").fancybox({
            'hideOnContentClick': true
        });

        /* Apply fancybox to multiple items */

        $("a.group").fancybox({
            'transitionIn'	:	'elastic',
            'transitionOut'	:	'elastic',
            'speedIn'		:	600,
            'speedOut'		:	200,
            'overlayShow'	:	false
        });

        var person = document.getElementById(`person_${currentNodeId}}`);
        person.addEventListener("click", function(e) {
            ShowHideLayer(e.currentTarget.id.replace("person_", ""));
        });
    });
}
