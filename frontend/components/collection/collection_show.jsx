import React from 'react';
import { Link } from 'react-router-dom';

class CollectionShow extends React.Component {
    constructor(props) {
        super(props);
    }

    componentDidMount() {
        this.props.fetchCollection(this.props.match.params.collectionId)
    }

    render() {
        if (this.props.collection.stories === undefined) {
            return null;
        } else {
            const { collection } = this.props;
            return (
                <div>
                    <div className='collection-title'>
                        {collection.title}
                    </div>
                    <div className='collection-count'>
                        {collection.count}
                    </div>
                    <div className='collection-stories'>
                        {Object.values(collection.stories).map((story) => (
                            <div className='collection-story' key={story.id}>
                                <Link to={`/story/${story.id}`}>{story.title}</Link>
                                <p>{story.description}</p>
                            </div>
                        ))}
                    </div>
                </div>
            )
        }
    }

}

export default CollectionShow