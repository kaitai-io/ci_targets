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
use super::hello_world::HelloWorld;
use super::params_def_usertype_imported::ParamsDefUsertypeImported;

#[derive(Default, Debug, Clone)]
pub struct ImportsParamsDefUsertypeImported {
    pub _root: SharedType<ImportsParamsDefUsertypeImported>,
    pub _parent: SharedType<ImportsParamsDefUsertypeImported>,
    pub _self: SharedType<Self>,
    hw: RefCell<OptRc<HelloWorld>>,
    two: RefCell<OptRc<ParamsDefUsertypeImported>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ImportsParamsDefUsertypeImported {
    type Root = ImportsParamsDefUsertypeImported;
    type Parent = ImportsParamsDefUsertypeImported;

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
        let t = Self::read_into::<_, HelloWorld>(&*_io, None, None)?.into();
        *self_rc.hw.borrow_mut() = t;
        let f = |t : &mut ParamsDefUsertypeImported| Ok(t.set_params(&*self_rc.hw()));
        let t = Self::read_into_with_init::<_, ParamsDefUsertypeImported>(&*_io, None, None, &f)?.into();
        *self_rc.two.borrow_mut() = t;
        Ok(())
    }
}
impl ImportsParamsDefUsertypeImported {
}
impl ImportsParamsDefUsertypeImported {
    pub fn hw(&self) -> Ref<OptRc<HelloWorld>> {
        self.hw.borrow()
    }
}
impl ImportsParamsDefUsertypeImported {
    pub fn two(&self) -> Ref<OptRc<ParamsDefUsertypeImported>> {
        self.two.borrow()
    }
}
impl ImportsParamsDefUsertypeImported {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
