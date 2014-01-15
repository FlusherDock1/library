<?php namespace October\Rain\Database\Relations;

use Illuminate\Database\Eloquent\Relations\BelongsToMany as BelongsToManyBase;

class BelongsToMany extends BelongsToManyBase
{
    /**
     * Adds a model to this relationship type.
     */
    public function add(Model $model, $sessionKey = null, $joining = []) 
    {
        if ($sessionKey === null) {
            $this->attach($model->getKey(), $joining);
        }
        else {
            $this->parent->bindDeferred($this->relationName, $model, $sessionKey);
        }
    }

    /**
     * Removes a model from this relationship type.
     */
    public function remove(Model $model, $sessionKey = null) 
    {
        if ($sessionKey === null) {
            $this->detach($model->getKey());
        }
        else {
            $this->parent->unbindDeferred($this->relationName, $model, $sessionKey);
        }
    }

    /**
     * Returns the model query with deferred bindings added
     */
    public function withDeferred($sessionKey)
    {
        // @todo See DeferOneOrMany trait
    }

    /**
     * Joins the relationship tables to a query as a LEFT JOIN.
     */
    public function joinWithQuery($query)
    {
        $query = $query ?: $this->query;

        /*
         * Join the pivot table
         */

        $foreignTable = $this->parent->getTable();
        $foreignKey = $foreignTable.'.'.$this->parent->getKeyName();
        
        $query->leftJoin($this->table, $foreignKey, '=', $this->getForeignKey());

        /*
         * Join the 'other' relation table
         */
        $otherTable = $this->related->getTable();
        $otherKey = $otherTable.'.'.$this->related->getKeyName();

        $query->leftJoin($otherTable, $otherKey, '=', $this->getOtherKey());

        return $this;
    }
}