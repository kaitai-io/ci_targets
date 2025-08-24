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
pub struct JsSignedRightShift {
    pub _root: SharedType<JsSignedRightShift>,
    pub _parent: SharedType<JsSignedRightShift>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_should_be_40000000: Cell<bool>,
    should_be_40000000: RefCell<i32>,
    f_should_be_a00000: Cell<bool>,
    should_be_a00000: RefCell<i32>,
}
impl KStruct for JsSignedRightShift {
    type Root = JsSignedRightShift;
    type Parent = JsSignedRightShift;

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
impl JsSignedRightShift {
    pub fn should_be_40000000(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_should_be_40000000.get() {
            return Ok(self.should_be_40000000.borrow());
        }
        self.f_should_be_40000000.set(true);
        *self.should_be_40000000.borrow_mut() = ((((2147483648 as u64) >> 1) as i32)) as i32;
        Ok(self.should_be_40000000.borrow())
    }
    pub fn should_be_a00000(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_should_be_a00000.get() {
            return Ok(self.should_be_a00000.borrow());
        }
        self.f_should_be_a00000.set(true);
        *self.should_be_a00000.borrow_mut() = ((((2684354560 as u64) >> 8) as i32)) as i32;
        Ok(self.should_be_a00000.borrow())
    }
}
impl JsSignedRightShift {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
