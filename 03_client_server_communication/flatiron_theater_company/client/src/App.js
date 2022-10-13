import { Route, Switch } from 'react-router-dom'
import {createGlobalStyle} from 'styled-components'
import {useEffect, useState} from 'react'
import Home from './components/Home'
import ProductionForm from './components/ProductionForm'
import Navigation from './components/Navigation'
import ProductionDetail from './components/ProductionDetail'

function App() {
  const [productions, setProductions] = useState([])
  
    //GET to '/productions'

  const addProduction = (production) => setProductions(current => [...current,production])
       

  return (
    <>
    <GlobalStyle />
    <Navigation/>
      <Switch>
      <Route exact path='/'>
        <Home  productions={productions}/>
      </Route>
      
      <Route exact path='/productions/new'>
        <ProductionForm addProduction={addProduction} />
      </Route>
      
      <Route exact path='/productions/:id'>
          <ProductionDetail />
      </Route>
      </Switch>
   
    </>
  )
}

export default App

const GlobalStyle = createGlobalStyle`
    body{
      background-color: black; 
      color:white;
    }
    `

