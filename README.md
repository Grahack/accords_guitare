[Le pdf à télécharger](accords.pdf) - Adresse réduite de cette page :
[huit.re/acc](https://huit.re/acc)

Les accords sont présentés dans une progression à la fois technique (les plus
faciles à jouer au début) et théorique (les plus simples au début).

Attention, ce n’est pas un cours de guitare, plutôt un support pour un cours
de guitare.

## Dernières modifications du pdf

<div id="liste"></div>

## Compilation

Pour produire le pdf vous-même, vous aurez besoin d’une chaîne de compilation
LaTeX standard et du paquet [songs](http://songs.sourceforge.net/).

## Remarques et suggestions

Envoyer un email à <profgra.org@gmail.com> ou
[créer un ticket](https://github.com/Grahack/accords_guitare/issues/new)
dans le [QG de développement de ce doc](https://github.com/Grahack/accords_guitare/).

<div id="zarbi">Le code zarbi ci-dessous, c’est pour la liste des mises
à jour du pdf sur la github page.</div>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<style type="text/css">
    ul.liste {list-style: none;}
    ul.liste li {padding-bottom: 5px;}
</style>
<script type="text/javascript">
    $('#zarbi').html('');
    var target_elt = $('#liste');
    var endpoint = "https://api.github.com/repos/Grahack/accords_guitare/";
	var url = endpoint + "commits?path=accords.pdf";
    var request = $.get(url, {}, function() {}, 'jsonp');
    request.done(function(data) {
        var ul = $('<ul/>').addClass('liste').appendTo(target_elt);
        $.each(data.data, function(i, item) {
            var li = $('<li/>').appendTo(ul);
            var date = item.commit.author.date;
            $("<a/>").attr("href", item.html_url)
                .html(item.commit.message)
                .appendTo(li);
            li.append(", " + date.replace('T',' ').replace('Z',' '));
            if ( i === 5 ) {  // max items
                return false;
            }
        });
    });
</script>
