function MOI.add_constraint(model::Optimizer, fun::SV, set::MOI.ZeroOne)
    vi = fun.variable
    _check_inbounds(model, vi)
    model.inner.variable_info[vi.value].category = :Bin
    return
end

function MOI.add_constraint(model::Optimizer, fun::SV, set::MOI.Integer)
    vi = fun.variable
    _check_inbounds(model, vi)
    model.inner.variable_info[vi.value].category = :Int
    return
end
