import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import Home from './home';

const mSTP = state => ({
    user: state.entities.users[state.session.currentUserId]
});

const mDTP = dispatch => ({
    logout: () => dispatch(logout())
});

export default connect(mSTP, mDTP)(Home);