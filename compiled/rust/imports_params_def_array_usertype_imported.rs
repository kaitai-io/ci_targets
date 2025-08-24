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
use super::params_def_array_usertype_imported::ParamsDefArrayUsertypeImported;

#[derive(Default, Debug, Clone)]
pub struct ImportsParamsDefArrayUsertypeImported {
    pub _root: SharedType<ImportsParamsDefArrayUsertypeImported>,
    pub _parent: SharedType<ImportsParamsDefArrayUsertypeImported>,
    pub _self: SharedType<Self>,
    hws: RefCell<Vec<OptRc<HelloWorld>>>,
    two: RefCell<OptRc<ParamsDefArrayUsertypeImported>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ImportsParamsDefArrayUsertypeImported {
    type Root = ImportsParamsDefArrayUsertypeImported;
    type Parent = ImportsParamsDefArrayUsertypeImported;

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
        *self_rc.hws.borrow_mut() = Vec::new();
        let l_hws = 2;
        for _i in 0..l_hws {
            let t = Self::read_into::<_, HelloWorld>(&*_io, None, None)?.into();
            self_rc.hws.borrow_mut().push(t);
        }
        let f = |t : &mut ParamsDefArrayUsertypeImported| Ok(t.set_params(&*self_rc.hws()));
        let t = Self::read_into_with_init::<_, ParamsDefArrayUsertypeImported>(&*_io, None, None, &f)?.into();
        *self_rc.two.borrow_mut() = t;
        Ok(())
    }
}
impl ImportsParamsDefArrayUsertypeImported {
}
impl ImportsParamsDefArrayUsertypeImported {
    pub fn hws(&self) -> Ref<'_, Vec<OptRc<HelloWorld>>> {
        self.hws.borrow()
    }
}
impl ImportsParamsDefArrayUsertypeImported {
    pub fn two(&self) -> Ref<'_, OptRc<ParamsDefArrayUsertypeImported>> {
        self.two.borrow()
    }
}
impl ImportsParamsDefArrayUsertypeImported {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
