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
use super::enum_to_i_class_border_1::EnumToIClassBorder1;

#[derive(Default, Debug, Clone)]
pub struct EnumToIClassBorder2 {
    pub _root: SharedType<EnumToIClassBorder2>,
    pub _parent: SharedType<EnumToIClassBorder2>,
    pub _self: SharedType<Self>,
    parent: RefCell<OptRc<EnumToIClassBorder1>>,
    _io: RefCell<BytesReader>,
    f_is_dog: Cell<bool>,
    is_dog: RefCell<bool>,
}
impl KStruct for EnumToIClassBorder2 {
    type Root = EnumToIClassBorder2;
    type Parent = EnumToIClassBorder2;

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
impl EnumToIClassBorder2 {
    pub fn parent(&self) -> Ref<OptRc<EnumToIClassBorder1>> {
        self.parent.borrow()
    }
}
impl EnumToIClassBorder2 {
    pub fn set_params(&mut self, parent: &OptRc<EnumToIClassBorder1>) {
        *self.parent.borrow_mut() = parent.clone();
    }
}
impl EnumToIClassBorder2 {
    pub fn is_dog(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_dog.get() {
            return Ok(self.is_dog.borrow());
        }
        self.f_is_dog.set(true);
        *self.is_dog.borrow_mut() = (((i64::from(&*self.parent().some_dog()?) as i32) == (4 as i32))) as bool;
        Ok(self.is_dog.borrow())
    }
}
impl EnumToIClassBorder2 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
