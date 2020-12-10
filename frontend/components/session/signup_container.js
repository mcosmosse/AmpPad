import { connect } from 'react-redux';
import sessionForm from './session_form';
import { signup } from '../../actions/session_actions';

const mSTP = (state) => {
    return {
        formType: 'Sign Up!',
        errors: state.errors.session
    };
};

const mDTP = (dispatch) => ({
    action: (user) => dispatch(signup(user))
});

export default connect(mSTP, mDTP)(sessionForm);