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
pub struct EnumImportLiterals {
    pub _root: SharedType<EnumImportLiterals>,
    pub _parent: SharedType<EnumImportLiterals>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_pet_1_eq: Cell<bool>,
    pet_1_eq: RefCell<bool>,
    f_pet_1_to_i: Cell<bool>,
    pet_1_to_i: RefCell<i32>,
    f_pet_2: Cell<bool>,
    pet_2: RefCell<EnumDeep_Container1_Container2_Animal>,
}
impl KStruct for EnumImportLiterals {
    type Root = EnumImportLiterals;
    type Parent = EnumImportLiterals;

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
impl EnumImportLiterals {
    pub fn pet_1_eq(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_pet_1_eq.get() {
            return Ok(self.pet_1_eq.borrow());
        }
        self.f_pet_1_eq.set(true);
        *self.pet_1_eq.borrow_mut() = (if true { Enum0_Animal::Chicken.clone() } else { Enum0_Animal::Dog.clone() } == Enum0_Animal::Chicken) as bool;
        Ok(self.pet_1_eq.borrow())
    }
    pub fn pet_1_to_i(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_pet_1_to_i.get() {
            return Ok(self.pet_1_to_i.borrow());
        }
        self.f_pet_1_to_i.set(true);
        *self.pet_1_to_i.borrow_mut() = (i64::from(&Enum0_Animal::Cat)) as i32;
        Ok(self.pet_1_to_i.borrow())
    }
    pub fn pet_2(
        &self
    ) -> KResult<Ref<'_, EnumDeep_Container1_Container2_Animal>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_pet_2.get() {
            return Ok(self.pet_2.borrow());
        }
        self.f_pet_2.set(true);
        *self.pet_2.borrow_mut() = EnumDeep_Container1_Container2_Animal::Hare;
        Ok(self.pet_2.borrow())
    }
}
impl EnumImportLiterals {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
