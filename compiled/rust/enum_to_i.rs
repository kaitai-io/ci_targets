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
pub struct EnumToI {
    pub _root: SharedType<EnumToI>,
    pub _parent: SharedType<EnumToI>,
    pub _self: SharedType<Self>,
    pet_1: RefCell<EnumToI_Animal>,
    pet_2: RefCell<EnumToI_Animal>,
    _io: RefCell<BytesReader>,
    f_one_lt_two: Cell<bool>,
    one_lt_two: RefCell<bool>,
    f_pet_1_eq_int: Cell<bool>,
    pet_1_eq_int: RefCell<bool>,
    f_pet_1_i: Cell<bool>,
    pet_1_i: RefCell<i32>,
    f_pet_1_i_to_s: Cell<bool>,
    pet_1_i_to_s: RefCell<String>,
    f_pet_1_mod: Cell<bool>,
    pet_1_mod: RefCell<i32>,
    f_pet_2_eq_int: Cell<bool>,
    pet_2_eq_int: RefCell<bool>,
}
impl KStruct for EnumToI {
    type Root = EnumToI;
    type Parent = EnumToI;

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
        *self_rc.pet_1.borrow_mut() = (_io.read_u4le()? as i64).try_into()?;
        *self_rc.pet_2.borrow_mut() = (_io.read_u4le()? as i64).try_into()?;
        Ok(())
    }
}
impl EnumToI {
    pub fn one_lt_two(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_one_lt_two.get() {
            return Ok(self.one_lt_two.borrow());
        }
        self.f_one_lt_two.set(true);
        *self.one_lt_two.borrow_mut() = (i64::from(&*self.pet_1()) < i64::from(&*self.pet_2())) as bool;
        Ok(self.one_lt_two.borrow())
    }
    pub fn pet_1_eq_int(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_pet_1_eq_int.get() {
            return Ok(self.pet_1_eq_int.borrow());
        }
        self.f_pet_1_eq_int.set(true);
        *self.pet_1_eq_int.borrow_mut() = (((i64::from(&*self.pet_1()) as i32) == (7 as i32))) as bool;
        Ok(self.pet_1_eq_int.borrow())
    }
    pub fn pet_1_i(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_pet_1_i.get() {
            return Ok(self.pet_1_i.borrow());
        }
        self.f_pet_1_i.set(true);
        *self.pet_1_i.borrow_mut() = (i64::from(&*self.pet_1())) as i32;
        Ok(self.pet_1_i.borrow())
    }
    pub fn pet_1_i_to_s(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_pet_1_i_to_s.get() {
            return Ok(self.pet_1_i_to_s.borrow());
        }
        self.f_pet_1_i_to_s.set(true);
        *self.pet_1_i_to_s.borrow_mut() = i64::from(&*self.pet_1()).to_string().to_string();
        Ok(self.pet_1_i_to_s.borrow())
    }
    pub fn pet_1_mod(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_pet_1_mod.get() {
            return Ok(self.pet_1_mod.borrow());
        }
        self.f_pet_1_mod.set(true);
        *self.pet_1_mod.borrow_mut() = (((i64::from(&*self.pet_1()) as i32) + (32768 as i32))) as i32;
        Ok(self.pet_1_mod.borrow())
    }
    pub fn pet_2_eq_int(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_pet_2_eq_int.get() {
            return Ok(self.pet_2_eq_int.borrow());
        }
        self.f_pet_2_eq_int.set(true);
        *self.pet_2_eq_int.borrow_mut() = (((i64::from(&*self.pet_2()) as i32) == (5 as i32))) as bool;
        Ok(self.pet_2_eq_int.borrow())
    }
}
impl EnumToI {
    pub fn pet_1(&self) -> Ref<EnumToI_Animal> {
        self.pet_1.borrow()
    }
}
impl EnumToI {
    pub fn pet_2(&self) -> Ref<EnumToI_Animal> {
        self.pet_2.borrow()
    }
}
impl EnumToI {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum EnumToI_Animal {
    Dog,
    Cat,
    Chicken,
    Unknown(i64),
}

impl TryFrom<i64> for EnumToI_Animal {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<EnumToI_Animal> {
        match flag {
            4 => Ok(EnumToI_Animal::Dog),
            7 => Ok(EnumToI_Animal::Cat),
            12 => Ok(EnumToI_Animal::Chicken),
            _ => Ok(EnumToI_Animal::Unknown(flag)),
        }
    }
}

impl From<&EnumToI_Animal> for i64 {
    fn from(v: &EnumToI_Animal) -> Self {
        match *v {
            EnumToI_Animal::Dog => 4,
            EnumToI_Animal::Cat => 7,
            EnumToI_Animal::Chicken => 12,
            EnumToI_Animal::Unknown(v) => v
        }
    }
}

impl Default for EnumToI_Animal {
    fn default() -> Self { EnumToI_Animal::Unknown(0) }
}

