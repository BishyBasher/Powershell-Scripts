param(
    [Parameter(Mandatory, Position=1, HelpMessage = "Which animal are you most afraid of?")]
    #a word
    $Animal
)

$article = if ('aeiou'.IndexOf($Animal.ToLower()[0]) -ge 0) {
    "an"
}
else {
    "a"
}

"Lookout, $($article) $($Animal) has been spotted nearby!"