# Evidence 1.
## Implementation of Lexical Analysis (Automaton and Regular Expression)
Frida Alexia Arcadia Luna A01711615
---
# Context & Description
The language chosen for this evidence is "*Elven (or Elvish)*". This set of languages was created by the talented writter, J. R. R. Tolkien, with philological purposes, and then gave use to this languages in his broad collection of Middle-earth books. Later in time, this languages have been adapted to modern day-use. There were two main languages in the begining, '*Quenya*' and '*Sindarin*'. Quenya is also known as the language of the '*High-elven*', and was strongly influenced by Finish. On the other hand, there's '*Sindarin*', the language of the '*Grey-elven*', which was influenced by Welsh.

In this evidence, only a few words belonging to the Elvish languages will be used, and the words are the following:
- Ando: Quenya word for 'Gate'.
- Andúril: Quenya word for 'Flame-of-the-West', which is the name of the sword of Aragorn, formerly know as 'Narsil'.
- Andúnë: Quenya word for 'sunset, west'.
- Anga: Quenya word for 'Iron'.
- Ann-thannath - Combination of Sindarin words meaning 'The-Gift-of-Words'. A mode of verse and song, among the Elves of Beleriand.
---
### Automata

"A finite automaton is an abstract machine used to recognize patterns in input sequences, forming the basis for understanding regular languages in computer science" (Geeks for Geeks, 2024).
Automata are composed of states, transitions and symbols. 
To formally define Automata, we use the following symbols:
{K, Σ, q0, F, δ}, where:
- K is the number of states in the automaton
- Σ is the finite alphabet
- q0 is the initial state 
- F is the final state
- δ represents the transitions in the automaton

There are different types of automata, for now, I will focus on two: the Deterministic Finite Automata (DFA) and the Non-deterministic Finite Automata. The differences between these two are mainly that in the DFA you can only move on to one specific state with one letter, say *n* can only take you from q0 to q1, while with the NFA you can move to more than one state using one letter, for example, *n* could take you from q0 to q1 *or* from q0 to q2 *or* from q0 back to q0. Another difference between the two types of automata is that NFA will take *null* values as inputs.

For this project in particular, I will be working with a DFA, given that there is only one path you can take to achieve the correct formation of the letters in the alphabet to obtain the desired words.

### Chosen model

The finite alphabet for this project is:

Σ = A, d, ë, g, h, i, l, n, o, r, t, ú, -

Any other letter of the latin alphabet or any other symbol will not be accepted in this automaton.

The automaton I designed for this project is the following:

![Automaton](https://github.com/frida-al/lexical_analysis/blob/main/Automaton_.png)
--- 
### Regular expression

Regular expressions or 'regex' "are patterns used to match character combinations in strings" (MDN, 2025).

Another way to represent the automaton i will be working on, is using a regular expression. In this case, as in the automaton model, I will use the same alphabet and the same conditions for accepting a string or not. 

The regular expression is the following:

(^An) ((d(o | ú(ril | në))) | (ga) | (n-thannath))

Breaking it down a little bit, it indicates the accepted words must start with An, followed with one of the options provided next.

---
## References
GeeksforGeeks. (2024, september 12). *Introduction of Finite Automata*. GeeksforGeeks. https://www.geeksforgeeks.org/introduction-of-finite-automata/ 

MDN Web Docs. (2025, january 24). *Regular expressions - JavaScript*. MDN. https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_expressions
