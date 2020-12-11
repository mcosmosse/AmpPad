import React from 'react';
import { Link } from 'react-router-dom';

const Navbar = ({logout, currentUser}) => {
    return (
        <nav>
            <Link to='/'>Amppad</Link>
            <a href='https://github.com/mcosmosse'>Github</a>
            <a href='https://www.linkedin.com/in/maxbryan-cosmosse-94055416a/'>Linkedin</a>


            {!currentUser ?
                <Link to="/login">Log in</Link> 
                :
                <div>
                    <select name="write">
                        <option onClick={<Link to='/stories/new'></Link>}>Create a new story</option>
                        <option onClick={<Link to='/stories'></Link>}>My Stories</option>
                    </select>
                    <select name="user">
                        <option onClick={<Link to={`/user/${currentUser.id}`}></Link>}>My Profile</option>
                        <option onClick={<Link to={`/user/${currentUser.id}/collections`}></Link>}>My Collections</option>
                        <option onClick={logout}>Logout</option>
                    </select>
                </div>}
        </nav>
    );
}
 
export default Navbar;