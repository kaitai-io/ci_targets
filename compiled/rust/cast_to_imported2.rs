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

#[derive(Default, Debug, Clone)]
pub struct CastToImported2 {
    pub _root: SharedType<CastToImported2>,
    pub _parent: SharedType<CastToImported2>,
    pub _self: SharedType<Self>,
    hw_param: RefCell<KStructUnit>,
    _io: RefCell<BytesReader>,
    f_hw: Cell<bool>,
    hw: RefCell<OptRc<HelloWorld>>,
}
impl KStruct for CastToImported2 {
    type Root = CastToImported2;
    type Parent = CastToImported2;

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
        Ok(())
    }
}
impl CastToImported2 {
    pub fn hw_param(&self) -> Ref<'_, KStructUnit> {
        self.hw_param.borrow()
    }
}
impl CastToImported2 {
    pub fn set_params(&mut self, hw_param: KStructUnit) {
        *self.hw_param.borrow_mut() = hw_param;
    }
}
impl CastToImported2 {
    pub fn hw(
        &self
    ) -> KResult<Ref<'_, OptRc<HelloWorld>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_hw.get() {
            return Ok(self.hw.borrow());
        }
        *self.hw.borrow_mut() = Into::<OptRc<HelloWorld>>::into(&*self.hw_param()).clone();
        Ok(self.hw.borrow())
    }
}
impl CastToImported2 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
