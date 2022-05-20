TOP MENU

<a href="/" class="active">Home</a>
<a href="/cryptos/list_all">Cryptos</a>
<a href="/stories/index">Stories</a>
<% if logged_in?%>

<form action="/sessions" method="POST">
<input type="hidden" name="_method" value="delete">

      <button>Logout</button>
    </form>

<% else %>
<a href="/login">Log in</a>
<% end %>  
 <a href="/sign_up">Sign up</a>
<a href="/">About</a>

nav><ul>
<%# <li>  
 <a href="/search_crypto">Search a Crypto</a>

  </li>
  <li class="internav"> | </li> %>
  <li>
    <a href="/cryptos/list_all">Cryptos</a>
  </li>
  <li class="internav"> | </li>
  <li>
    <a href="/stories/index">Stories</a>  
  </li>
  <li class="internav"> | </li>
  <li>
    <a href="/">Home</a>  
  </li>
   <li class="internav"> | </li>
  <li> <% if logged_in?%>
    <form action="/sessions" method="POST">
      <input type="hidden" name="_method" value="delete">

      <button>Logout</button>
    </form>
    <% else %>
      <a href="/login">Log in</a>
    <% end %>

  </li>
   <li class="internav"> | </li>
  <li>
    <a href="/sign_up">Sign up</a>  
  </li>
  
</ul></nav>

from index

<h3>Current BTC price: <%= btc_price['bitcoin']['aud'] %> AUD</h3>

 <form action="javascript:history.go(0)">
      <button>Update</button>
    </form>
