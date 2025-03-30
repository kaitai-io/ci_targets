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
pub struct EnumToIInvalid {
    pub _root: SharedType<EnumToIInvalid>,
    pub _parent: SharedType<EnumToIInvalid>,
    pub _self: SharedType<Self>,
    pet_1: RefCell<EnumToIInvalid_Animal>,
    pet_2: RefCell<EnumToIInvalid_Animal>,
    _io: RefCell<BytesReader>,
    f_one_lt_two: Cell<bool>,
    one_lt_two: RefCell<bool>,
    f_pet_2_eq_int_f: Cell<bool>,
    pet_2_eq_int_f: RefCell<bool>,
    f_pet_2_eq_int_t: Cell<bool>,
    pet_2_eq_int_t: RefCell<bool>,
    f_pet_2_i: Cell<bool>,
    pet_2_i: RefCell<i32>,
    f_pet_2_i_to_s: Cell<bool>,
    pet_2_i_to_s: RefCell<String>,
    f_pet_2_mod: Cell<bool>,
    pet_2_mod: RefCell<i32>,
}
impl KStruct for EnumToIInvalid {
    type Root = EnumToIInvalid;
    type Parent = EnumToIInvalid;

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
        *self_rc.pet_1.borrow_mut() = (_io.read_u1()? as i64).try_into()?;
        *self_rc.pet_2.borrow_mut() = (_io.read_u1()? as i64).try_into()?;
        Ok(())
    }
}
impl EnumToIInvalid {
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
        *self.one_lt_two.borrow_mut() = (((i64::from(&*self.pet_1()) as i32) < (i64::from(&*self.pet_2()) as i32))) as bool;
        Ok(self.one_lt_two.borrow())
    }
    pub fn pet_2_eq_int_f(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_pet_2_eq_int_f.get() {
            return Ok(self.pet_2_eq_int_f.borrow());
        }
        self.f_pet_2_eq_int_f.set(true);
        *self.pet_2_eq_int_f.borrow_mut() = (((i64::from(&*self.pet_2()) as i32) == (110 as i32))) as bool;
        Ok(self.pet_2_eq_int_f.borrow())
    }
    pub fn pet_2_eq_int_t(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_pet_2_eq_int_t.get() {
            return Ok(self.pet_2_eq_int_t.borrow());
        }
        self.f_pet_2_eq_int_t.set(true);
        *self.pet_2_eq_int_t.borrow_mut() = (((i64::from(&*self.pet_2()) as i32) == (111 as i32))) as bool;
        Ok(self.pet_2_eq_int_t.borrow())
    }
    pub fn pet_2_i(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_pet_2_i.get() {
            return Ok(self.pet_2_i.borrow());
        }
        self.f_pet_2_i.set(true);
        *self.pet_2_i.borrow_mut() = (i64::from(&*self.pet_2())) as i32;
        Ok(self.pet_2_i.borrow())
    }
    pub fn pet_2_i_to_s(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_pet_2_i_to_s.get() {
            return Ok(self.pet_2_i_to_s.borrow());
        }
        self.f_pet_2_i_to_s.set(true);
        *self.pet_2_i_to_s.borrow_mut() = i64::from(&*self.pet_2()).to_string().to_string();
        Ok(self.pet_2_i_to_s.borrow())
    }
    pub fn pet_2_mod(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_pet_2_mod.get() {
            return Ok(self.pet_2_mod.borrow());
        }
        self.f_pet_2_mod.set(true);
        *self.pet_2_mod.borrow_mut() = (((i64::from(&*self.pet_2()) as i32) + (32768 as i32))) as i32;
        Ok(self.pet_2_mod.borrow())
    }
}
impl EnumToIInvalid {
    pub fn pet_1(&self) -> Ref<EnumToIInvalid_Animal> {
        self.pet_1.borrow()
    }
}
impl EnumToIInvalid {
    pub fn pet_2(&self) -> Ref<EnumToIInvalid_Animal> {
        self.pet_2.borrow()
    }
}
impl EnumToIInvalid {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum EnumToIInvalid_Animal {
    Dog,
    Cat,
    Unknown(i64),
}

impl TryFrom<i64> for EnumToIInvalid_Animal {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<EnumToIInvalid_Animal> {
        match flag {
            102 => Ok(EnumToIInvalid_Animal::Dog),
            124 => Ok(EnumToIInvalid_Animal::Cat),
            _ => Ok(EnumToIInvalid_Animal::Unknown(flag)),
        }
    }
}

impl From<&EnumToIInvalid_Animal> for i64 {
    fn from(v: &EnumToIInvalid_Animal) -> Self {
        match *v {
            EnumToIInvalid_Animal::Dog => 102,
            EnumToIInvalid_Animal::Cat => 124,
            EnumToIInvalid_Animal::Unknown(v) => v
        }
    }
}

impl Default for EnumToIInvalid_Animal {
    fn default() -> Self { EnumToIInvalid_Animal::Unknown(0) }
}

