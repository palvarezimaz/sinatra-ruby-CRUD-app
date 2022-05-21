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

/////

## TO DELETE WHEN OVER

# get '/cryptos/btc_price' do

# btc_price = HTTParty.get("https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=aud")

#

# redirect '/cryptos'

# # # price = btc_price['bitcoin']['aud']

# # erb :index, locals: {

# # btc_price: btc_price

# # # price: price

# # }

# end

#UNDER WORK

# get '/cryptos/search_crypto' do

# erb :cryptos/search_crypto

# end

# get '/cryptos/one_crypto' do

# name = params['name']

# crypto = one_crypto()

# # binding.pry

# erb :cryptos/one_crypto, locals: {

# crypto: crypto

# }

# redirect '/cryptos/one_crypto'

# end

# def crypto_price(acronym)

# HTTParty.get("https://api.coingecko.com/api/v3/simple/price?ids=#{acronym}&vs_currencies=aud")

# end

// function wrong_pass_alert() {
// if (
// document.getElementById('pass').value != '' &&
// document.getElementById('confirm_pass').value != ''
// ) {
// alert('Your response is submitted');
// } else {
// alert('Please fill all the fields');
// }
// }
