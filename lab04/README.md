1) What React construct is used to implement separate pages of an application (cf. separate webpages on the Web)?

stack navigator: Stack Navigator allows us to build our app to move back and forth of destined screens, where each new screen is placed on top of a stack. 

2) What is the React Navigation concept that is analogous to a URL/URI on the Web?
 Browser has anchor where it links to a different page, react navigation provides stack navigation to move through pages with the "unique name" of the pages which developers give them.

3) The onPress event handler for the home screen component is specified as () => navigation.navigate('Details'). Can we just say navigation.navigate('Details')? Why or why not?

=> () is an arrow function, and it indicates that the left part denotes the input of a function and the right part the output of that function. So at this case, it stores the current page, and gives next location as a param. So no we can't use it without arrow function.

4) Explain how the hard-coded movie list is presented as a list of titles on the homepage.

First we have stored them in a database form in the memory, then we pull them as a text that displays in the homepage. Lastly we styled the text to be "pressable" with touchableOpacity so that we could use them to navigate them to a different page on stack using onPress eventcall. 

5) Explain how the details screen presents the details of a single movie.

Simil,lar to the Titles in homepage, we pull them from database and render the specified title's description using "<route>.<param>.<value>" That way we can display exactlty which information (value) that we want to display and render at page transition. 
