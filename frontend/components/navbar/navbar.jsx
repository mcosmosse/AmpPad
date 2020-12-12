import React from 'react';
import { render } from 'react-dom';
import { Link } from 'react-router-dom';

class Navbar extends React.Component {
    constructor(props) {
        super(props);
    }

    handleDropdown(e) {
        e.target.classList.toggle('show')
    }

    render() {

        return (
            <nav className='navbar'>
                <div className='nav-left'>
                    <Link to='/'>Amppad</Link>
                    <a href='https://github.com/mcosmosse' target='_blank'>Github</a>
                    <a href='https://www.linkedin.com/in/maxbryan-cosmosse-94055416a/' target='_blank'>Linkedin</a>
                </div>

                <div className='nav-right'>
                    {!this.props.currentUser ?
                        <Link to="/login">Log in</Link> 
                        :
                        <div className="nav-dropdowns">
                            <ul className={`nav-dropdown-write`} onClick={this.handleDropdown}>Write
                                <li><Link to='/stories/new'>Create a new story</Link></li>
                                <li><Link to='/stories'>My stories</Link></li>
                            </ul>
                            <ul className={`nav-dropdown-profile`} onClick={this.handleDropdown}>Profile
                                <li><Link to={`/user/${this.props.currentUser.id}`}>My Profile</Link></li>
                                <li><Link to={`/user/${this.props.currentUser.id}/collections`}>My Collections</Link></li>
                                <li onClick={this.props.logout}>Logout</li>
                            </ul>
                        </div>
                    }
                </div>
            </nav>
        );
    }
}
 
export default Navbar;