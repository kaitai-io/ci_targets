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
pub struct TypeTernary2ndFalsy {
    pub _root: SharedType<TypeTernary2ndFalsy>,
    pub _parent: SharedType<TypeTernary2ndFalsy>,
    pub _self: SharedType<Self>,
    int_truthy: RefCell<u8>,
    ut: RefCell<OptRc<TypeTernary2ndFalsy_Foo>>,
    int_array: RefCell<Vec<u8>>,
    int_array_empty: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
    f_null_ut: Cell<bool>,
    null_ut: RefCell<OptRc<TypeTernary2ndFalsy_Foo>>,
    f_t: Cell<bool>,
    t: RefCell<bool>,
    f_v_false: Cell<bool>,
    v_false: RefCell<bool>,
    f_v_float_neg_zero: Cell<bool>,
    v_float_neg_zero: RefCell<f64>,
    f_v_float_zero: Cell<bool>,
    v_float_zero: RefCell<f64>,
    f_v_int_array_empty: Cell<bool>,
    v_int_array_empty: RefCell<Vec<u8>>,
    f_v_int_neg_zero: Cell<bool>,
    v_int_neg_zero: RefCell<i32>,
    f_v_int_zero: Cell<bool>,
    v_int_zero: RefCell<i8>,
    f_v_null_ut: Cell<bool>,
    v_null_ut: RefCell<OptRc<TypeTernary2ndFalsy_Foo>>,
    f_v_str_empty: Cell<bool>,
    v_str_empty: RefCell<String>,
    f_v_str_w_zero: Cell<bool>,
    v_str_w_zero: RefCell<String>,
}
impl KStruct for TypeTernary2ndFalsy {
    type Root = TypeTernary2ndFalsy;
    type Parent = TypeTernary2ndFalsy;

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
        *self_rc.int_truthy.borrow_mut() = _io.read_u1()?.into();
        let t = Self::read_into::<_, TypeTernary2ndFalsy_Foo>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.ut.borrow_mut() = t;
        *self_rc.int_array.borrow_mut() = Vec::new();
        let l_int_array = 2;
        for _i in 0..l_int_array {
            self_rc.int_array.borrow_mut().push(_io.read_u1()?.into());
        }
        *self_rc.int_array_empty.borrow_mut() = Vec::new();
        let l_int_array_empty = 0;
        for _i in 0..l_int_array_empty {
            self_rc.int_array_empty.borrow_mut().push(_io.read_u1()?.into());
        }
        Ok(())
    }
}
impl TypeTernary2ndFalsy {
    pub fn null_ut(
        &self
    ) -> KResult<Ref<'_, OptRc<TypeTernary2ndFalsy_Foo>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_null_ut.get() {
            return Ok(self.null_ut.borrow());
        }
        if false {
            *self.null_ut.borrow_mut() = self.ut().clone();
        }
        Ok(self.null_ut.borrow())
    }
    pub fn t(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_t.get() {
            return Ok(self.t.borrow());
        }
        self.f_t.set(true);
        *self.t.borrow_mut() = (true) as bool;
        Ok(self.t.borrow())
    }
    pub fn v_false(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_v_false.get() {
            return Ok(self.v_false.borrow());
        }
        self.f_v_false.set(true);
        *self.v_false.borrow_mut() = (if *self.t()? { false } else { true }) as bool;
        Ok(self.v_false.borrow())
    }
    pub fn v_float_neg_zero(
        &self
    ) -> KResult<Ref<'_, f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_v_float_neg_zero.get() {
            return Ok(self.v_float_neg_zero.borrow());
        }
        self.f_v_float_neg_zero.set(true);
        *self.v_float_neg_zero.borrow_mut() = (if *self.t()? { -0.0 } else { -2.72 }) as f64;
        Ok(self.v_float_neg_zero.borrow())
    }
    pub fn v_float_zero(
        &self
    ) -> KResult<Ref<'_, f64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_v_float_zero.get() {
            return Ok(self.v_float_zero.borrow());
        }
        self.f_v_float_zero.set(true);
        *self.v_float_zero.borrow_mut() = (if *self.t()? { 0.0 } else { 3.14 }) as f64;
        Ok(self.v_float_zero.borrow())
    }
    pub fn v_int_array_empty(
        &self
    ) -> KResult<Ref<'_, Vec<u8>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_v_int_array_empty.get() {
            return Ok(self.v_int_array_empty.borrow());
        }
        self.f_v_int_array_empty.set(true);
        *self.v_int_array_empty.borrow_mut() = if *self.t()? { self.int_array_empty().clone() } else { self.int_array().clone() }.to_vec();
        Ok(self.v_int_array_empty.borrow())
    }
    pub fn v_int_neg_zero(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_v_int_neg_zero.get() {
            return Ok(self.v_int_neg_zero.borrow());
        }
        self.f_v_int_neg_zero.set(true);
        *self.v_int_neg_zero.borrow_mut() = (if *self.t()? { 0 } else { -20 }) as i32;
        Ok(self.v_int_neg_zero.borrow())
    }
    pub fn v_int_zero(
        &self
    ) -> KResult<Ref<'_, i8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_v_int_zero.get() {
            return Ok(self.v_int_zero.borrow());
        }
        self.f_v_int_zero.set(true);
        *self.v_int_zero.borrow_mut() = (if *self.t()? { 0 } else { 10 }) as i8;
        Ok(self.v_int_zero.borrow())
    }
    pub fn v_null_ut(
        &self
    ) -> KResult<Ref<'_, OptRc<TypeTernary2ndFalsy_Foo>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_v_null_ut.get() {
            return Ok(self.v_null_ut.borrow());
        }
        *self.v_null_ut.borrow_mut() = if *self.t()? { self.null_ut()?.clone() } else { self.ut().clone() }.clone();
        Ok(self.v_null_ut.borrow())
    }
    pub fn v_str_empty(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_v_str_empty.get() {
            return Ok(self.v_str_empty.borrow());
        }
        self.f_v_str_empty.set(true);
        *self.v_str_empty.borrow_mut() = if *self.t()? { "".to_string() } else { "kaitai".to_string() }.to_string();
        Ok(self.v_str_empty.borrow())
    }
    pub fn v_str_w_zero(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_v_str_w_zero.get() {
            return Ok(self.v_str_w_zero.borrow());
        }
        self.f_v_str_w_zero.set(true);
        *self.v_str_w_zero.borrow_mut() = if *self.t()? { "0".to_string() } else { "30".to_string() }.to_string();
        Ok(self.v_str_w_zero.borrow())
    }
}
impl TypeTernary2ndFalsy {
    pub fn int_truthy(&self) -> Ref<'_, u8> {
        self.int_truthy.borrow()
    }
}
impl TypeTernary2ndFalsy {
    pub fn ut(&self) -> Ref<'_, OptRc<TypeTernary2ndFalsy_Foo>> {
        self.ut.borrow()
    }
}
impl TypeTernary2ndFalsy {
    pub fn int_array(&self) -> Ref<'_, Vec<u8>> {
        self.int_array.borrow()
    }
}
impl TypeTernary2ndFalsy {
    pub fn int_array_empty(&self) -> Ref<'_, Vec<u8>> {
        self.int_array_empty.borrow()
    }
}
impl TypeTernary2ndFalsy {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct TypeTernary2ndFalsy_Foo {
    pub _root: SharedType<TypeTernary2ndFalsy>,
    pub _parent: SharedType<TypeTernary2ndFalsy>,
    pub _self: SharedType<Self>,
    m: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for TypeTernary2ndFalsy_Foo {
    type Root = TypeTernary2ndFalsy;
    type Parent = TypeTernary2ndFalsy;

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
        *self_rc.m.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl TypeTernary2ndFalsy_Foo {
}
impl TypeTernary2ndFalsy_Foo {
    pub fn m(&self) -> Ref<'_, u8> {
        self.m.borrow()
    }
}
impl TypeTernary2ndFalsy_Foo {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
