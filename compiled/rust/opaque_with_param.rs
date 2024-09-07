// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(irrefutable_let_patterns)]
#![allow(unused_comparisons)]

extern crate kaitai;
use kaitai::*;
use std::convert::{TryFrom, TryInto};
use std::cell::{Ref, Cell, RefCell};
use std::rc::{Rc, Weak};
use super::params_def::ParamsDef;

#[derive(Default, Debug, Clone)]
pub struct OpaqueWithParam {
    pub _root: SharedType<OpaqueWithParam>,
    pub _parent: SharedType<OpaqueWithParam>,
    pub _self: SharedType<Self>,
    one: RefCell<OptRc<ParamsDef>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for OpaqueWithParam {
    type Root = OpaqueWithParam;
    type Parent = OpaqueWithParam;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        let f = |t : &mut ParamsDef| Ok(t.set_params((5).try_into().map_err(|_| KError::CastError)?, true));
        let t = Self::read_into_with_init::<_, ParamsDef>(&*_io, None, None, &f)?.into();
        *self_rc.one.borrow_mut() = t;
        Ok(())
    }
}
impl OpaqueWithParam {
}
impl OpaqueWithParam {
    pub fn one(&self) -> Ref<OptRc<ParamsDef>> {
        self.one.borrow()
    }
}
impl OpaqueWithParam {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
