const db = require('../data/db-config');

module.exports={
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}

function find(){
    return  db('schemes')
    .where({id:id})
    .join('steps','=', 'schemes.id')
}

function findById(id){
    return db('schemes')
    .where({id})
    .first();
}

function findSteps(id){
    return  db.select('schemes.scheme_name','steps.step_number', 'steps.instructions')
    .from('schemes')
    .join('steps', 'schemes.id', '=' , 'steps.scheme_id').where('schemes.id', '=', id).orderBy('steps.step_number');
    
}

function add(scheme){
    return db.insert(scheme).into('schemes');
    
}
function update(changes, id){
    return  db('schemes').where({id:id}).update(changes);
    
}

function remove(id){
    return  db('schemes').where({id:id}).del();
}
