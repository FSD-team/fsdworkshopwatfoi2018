import React from 'react';
import './App.css';

function App (props, context) {
    const eth = window.web3.eth;
    const account = eth.accounts[0];
    console.log('props: ', eth);
    return(
      <div className="App">
        <div>Account: {account}</div>
        <div>Balance: {eth.getBalance(account, logBalance)}</div>
      </div>
    )
  }
function logBalance (e) {
console.log('current balance: ', e)
}
export default App;
