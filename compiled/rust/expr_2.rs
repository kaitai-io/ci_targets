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
pub struct Expr2 {
    pub _root: SharedType<Expr2>,
    pub _parent: SharedType<Expr2>,
    pub _self: SharedType<Self>,
    str1: RefCell<OptRc<Expr2_ModStr>>,
    str2: RefCell<OptRc<Expr2_ModStr>>,
    _io: RefCell<BytesReader>,
    f_str1_avg: Cell<bool>,
    str1_avg: RefCell<i32>,
    f_str1_byte1: Cell<bool>,
    str1_byte1: RefCell<u8>,
    f_str1_char5: Cell<bool>,
    str1_char5: RefCell<String>,
    f_str1_len: Cell<bool>,
    str1_len: RefCell<i32>,
    f_str1_len_mod: Cell<bool>,
    str1_len_mod: RefCell<i32>,
    f_str1_tuple5: Cell<bool>,
    str1_tuple5: RefCell<OptRc<Expr2_Tuple>>,
    f_str2_tuple5: Cell<bool>,
    str2_tuple5: RefCell<OptRc<Expr2_Tuple>>,
}
impl KStruct for Expr2 {
    type Root = Expr2;
    type Parent = Expr2;

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
        let t = Self::read_into::<_, Expr2_ModStr>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.str1.borrow_mut() = t;
        let t = Self::read_into::<_, Expr2_ModStr>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.str2.borrow_mut() = t;
        Ok(())
    }
}
impl Expr2 {
    pub fn str1_avg(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str1_avg.get() {
            return Ok(self.str1_avg.borrow());
        }
        self.f_str1_avg.set(true);
        *self.str1_avg.borrow_mut() = (*self.str1().rest().avg()?) as i32;
        Ok(self.str1_avg.borrow())
    }
    pub fn str1_byte1(
        &self
    ) -> KResult<Ref<'_, u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str1_byte1.get() {
            return Ok(self.str1_byte1.borrow());
        }
        self.f_str1_byte1.set(true);
        *self.str1_byte1.borrow_mut() = (*self.str1().rest().byte1()) as u8;
        Ok(self.str1_byte1.borrow())
    }
    pub fn str1_char5(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str1_char5.get() {
            return Ok(self.str1_char5.borrow());
        }
        self.f_str1_char5.set(true);
        *self.str1_char5.borrow_mut() = self.str1().char5()?.to_string();
        Ok(self.str1_char5.borrow())
    }
    pub fn str1_len(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str1_len.get() {
            return Ok(self.str1_len.borrow());
        }
        self.f_str1_len.set(true);
        *self.str1_len.borrow_mut() = (self.str1().str().len()) as i32;
        Ok(self.str1_len.borrow())
    }
    pub fn str1_len_mod(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str1_len_mod.get() {
            return Ok(self.str1_len_mod.borrow());
        }
        self.f_str1_len_mod.set(true);
        *self.str1_len_mod.borrow_mut() = (*self.str1().len_mod()?) as i32;
        Ok(self.str1_len_mod.borrow())
    }
    pub fn str1_tuple5(
        &self
    ) -> KResult<Ref<'_, OptRc<Expr2_Tuple>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str1_tuple5.get() {
            return Ok(self.str1_tuple5.borrow());
        }
        *self.str1_tuple5.borrow_mut() = self.str1().tuple5()?.clone();
        Ok(self.str1_tuple5.borrow())
    }
    pub fn str2_tuple5(
        &self
    ) -> KResult<Ref<'_, OptRc<Expr2_Tuple>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str2_tuple5.get() {
            return Ok(self.str2_tuple5.borrow());
        }
        *self.str2_tuple5.borrow_mut() = self.str2().tuple5()?.clone();
        Ok(self.str2_tuple5.borrow())
    }
}
impl Expr2 {
    pub fn str1(&self) -> Ref<'_, OptRc<Expr2_ModStr>> {
        self.str1.borrow()
    }
}
impl Expr2 {
    pub fn str2(&self) -> Ref<'_, OptRc<Expr2_ModStr>> {
        self.str2.borrow()
    }
}
impl Expr2 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct Expr2_ModStr {
    pub _root: SharedType<Expr2>,
    pub _parent: SharedType<Expr2>,
    pub _self: SharedType<Self>,
    len_orig: RefCell<u16>,
    str: RefCell<String>,
    rest: RefCell<OptRc<Expr2_Tuple>>,
    _io: RefCell<BytesReader>,
    rest_raw: RefCell<Vec<u8>>,
    f_char5: Cell<bool>,
    char5: RefCell<String>,
    f_len_mod: Cell<bool>,
    len_mod: RefCell<i32>,
    f_tuple5: Cell<bool>,
    tuple5: RefCell<OptRc<Expr2_Tuple>>,
}
impl KStruct for Expr2_ModStr {
    type Root = Expr2;
    type Parent = Expr2;

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
        *self_rc.len_orig.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str.borrow_mut() = bytes_to_str(&_io.read_bytes(*self_rc.len_mod()? as usize)?.into(), "UTF-8")?;
        *self_rc.rest_raw.borrow_mut() = _io.read_bytes(3 as usize)?.into();
        let rest_raw = self_rc.rest_raw.borrow();
        let _t_rest_raw_io = BytesReader::from(rest_raw.clone());
        let t = Self::read_into::<BytesReader, Expr2_Tuple>(&_t_rest_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.rest.borrow_mut() = t;
        Ok(())
    }
}
impl Expr2_ModStr {
    pub fn char5(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_char5.get() {
            return Ok(self.char5.borrow());
        }
        self.f_char5.set(true);
        let _pos = _io.pos();
        _io.seek(5 as usize)?;
        *self.char5.borrow_mut() = bytes_to_str(&_io.read_bytes(1 as usize)?.into(), "ASCII")?;
        _io.seek(_pos)?;
        Ok(self.char5.borrow())
    }
    pub fn len_mod(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_len_mod.get() {
            return Ok(self.len_mod.borrow());
        }
        self.f_len_mod.set(true);
        *self.len_mod.borrow_mut() = (((*self.len_orig() as u16) - (3 as u16))) as i32;
        Ok(self.len_mod.borrow())
    }
    pub fn tuple5(
        &self
    ) -> KResult<Ref<'_, OptRc<Expr2_Tuple>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_tuple5.get() {
            return Ok(self.tuple5.borrow());
        }
        let _pos = _io.pos();
        _io.seek(5 as usize)?;
        let t = Self::read_into::<_, Expr2_Tuple>(&*_io, Some(self._root.clone()), Some(self._self.clone()))?.into();
        *self.tuple5.borrow_mut() = t;
        _io.seek(_pos)?;
        Ok(self.tuple5.borrow())
    }
}
impl Expr2_ModStr {
    pub fn len_orig(&self) -> Ref<'_, u16> {
        self.len_orig.borrow()
    }
}
impl Expr2_ModStr {
    pub fn str(&self) -> Ref<'_, String> {
        self.str.borrow()
    }
}
impl Expr2_ModStr {
    pub fn rest(&self) -> Ref<'_, OptRc<Expr2_Tuple>> {
        self.rest.borrow()
    }
}
impl Expr2_ModStr {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl Expr2_ModStr {
    pub fn rest_raw(&self) -> Ref<'_, Vec<u8>> {
        self.rest_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct Expr2_Tuple {
    pub _root: SharedType<Expr2>,
    pub _parent: SharedType<Expr2_ModStr>,
    pub _self: SharedType<Self>,
    byte0: RefCell<u8>,
    byte1: RefCell<u8>,
    byte2: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_avg: Cell<bool>,
    avg: RefCell<i32>,
}
impl KStruct for Expr2_Tuple {
    type Root = Expr2;
    type Parent = Expr2_ModStr;

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
        *self_rc.byte0.borrow_mut() = _io.read_u1()?.into();
        *self_rc.byte1.borrow_mut() = _io.read_u1()?.into();
        *self_rc.byte2.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl Expr2_Tuple {
    pub fn avg(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_avg.get() {
            return Ok(self.avg.borrow());
        }
        self.f_avg.set(true);
        *self.avg.borrow_mut() = (((((*self.byte1() as u8) + (*self.byte2() as u8)) as i32) / (2 as i32))) as i32;
        Ok(self.avg.borrow())
    }
}
impl Expr2_Tuple {
    pub fn byte0(&self) -> Ref<'_, u8> {
        self.byte0.borrow()
    }
}
impl Expr2_Tuple {
    pub fn byte1(&self) -> Ref<'_, u8> {
        self.byte1.borrow()
    }
}
impl Expr2_Tuple {
    pub fn byte2(&self) -> Ref<'_, u8> {
        self.byte2.borrow()
    }
}
impl Expr2_Tuple {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
