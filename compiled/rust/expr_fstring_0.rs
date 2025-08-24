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
pub struct ExprFstring0 {
    pub _root: SharedType<ExprFstring0>,
    pub _parent: SharedType<ExprFstring0>,
    pub _self: SharedType<Self>,
    seq_str: RefCell<String>,
    seq_int: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_empty: Cell<bool>,
    empty: RefCell<String>,
    f_head_and_int: Cell<bool>,
    head_and_int: RefCell<String>,
    f_head_and_int_literal: Cell<bool>,
    head_and_int_literal: RefCell<String>,
    f_head_and_str: Cell<bool>,
    head_and_str: RefCell<String>,
    f_head_and_str_literal: Cell<bool>,
    head_and_str_literal: RefCell<String>,
    f_literal: Cell<bool>,
    literal: RefCell<String>,
    f_literal_with_escapes: Cell<bool>,
    literal_with_escapes: RefCell<String>,
}
impl KStruct for ExprFstring0 {
    type Root = ExprFstring0;
    type Parent = ExprFstring0;

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
        *self_rc.seq_str.borrow_mut() = bytes_to_str(&_io.read_bytes(5 as usize)?.into(), "ASCII")?;
        *self_rc.seq_int.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl ExprFstring0 {
    pub fn empty(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_empty.get() {
            return Ok(self.empty.borrow());
        }
        self.f_empty.set(true);
        *self.empty.borrow_mut() = "".to_string();
        Ok(self.empty.borrow())
    }
    pub fn head_and_int(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_head_and_int.get() {
            return Ok(self.head_and_int.borrow());
        }
        self.f_head_and_int.set(true);
        *self.head_and_int.borrow_mut() = format!("{}{}", "abc=", *self.seq_int()).to_string();
        Ok(self.head_and_int.borrow())
    }
    pub fn head_and_int_literal(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_head_and_int_literal.get() {
            return Ok(self.head_and_int_literal.borrow());
        }
        self.f_head_and_int_literal.set(true);
        *self.head_and_int_literal.borrow_mut() = format!("{}{}", "abc=", 123).to_string();
        Ok(self.head_and_int_literal.borrow())
    }
    pub fn head_and_str(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_head_and_str.get() {
            return Ok(self.head_and_str.borrow());
        }
        self.f_head_and_str.set(true);
        *self.head_and_str.borrow_mut() = format!("{}{}", "abc=", *self.seq_str()).to_string();
        Ok(self.head_and_str.borrow())
    }
    pub fn head_and_str_literal(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_head_and_str_literal.get() {
            return Ok(self.head_and_str_literal.borrow());
        }
        self.f_head_and_str_literal.set(true);
        *self.head_and_str_literal.borrow_mut() = format!("{}{}", "abc=", "foo").to_string();
        Ok(self.head_and_str_literal.borrow())
    }
    pub fn literal(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_literal.get() {
            return Ok(self.literal.borrow());
        }
        self.f_literal.set(true);
        *self.literal.borrow_mut() = format!("{}", "abc").to_string();
        Ok(self.literal.borrow())
    }
    pub fn literal_with_escapes(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_literal_with_escapes.get() {
            return Ok(self.literal_with_escapes.borrow());
        }
        self.f_literal_with_escapes.set(true);
        *self.literal_with_escapes.borrow_mut() = format!("{}", "abc\n\tt").to_string();
        Ok(self.literal_with_escapes.borrow())
    }
}
impl ExprFstring0 {
    pub fn seq_str(&self) -> Ref<'_, String> {
        self.seq_str.borrow()
    }
}
impl ExprFstring0 {
    pub fn seq_int(&self) -> Ref<'_, u8> {
        self.seq_int.borrow()
    }
}
impl ExprFstring0 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
