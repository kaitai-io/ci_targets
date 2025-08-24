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
pub struct StrLiteralsLatin1 {
    pub _root: SharedType<StrLiteralsLatin1>,
    pub _parent: SharedType<StrLiteralsLatin1>,
    pub _self: SharedType<Self>,
    len_parsed: RefCell<u16>,
    parsed: RefCell<String>,
    _io: RefCell<BytesReader>,
    f_parsed_eq_literal: Cell<bool>,
    parsed_eq_literal: RefCell<bool>,
}
impl KStruct for StrLiteralsLatin1 {
    type Root = StrLiteralsLatin1;
    type Parent = StrLiteralsLatin1;

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
        *self_rc.len_parsed.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.parsed.borrow_mut() = bytes_to_str(&_io.read_bytes(*self_rc.len_parsed() as usize)?.into(), "UTF-8")?;
        Ok(())
    }
}
impl StrLiteralsLatin1 {
    pub fn parsed_eq_literal(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_parsed_eq_literal.get() {
            return Ok(self.parsed_eq_literal.borrow());
        }
        self.f_parsed_eq_literal.set(true);
        *self.parsed_eq_literal.borrow_mut() = (*self.parsed() == "\u{a3}".to_string()) as bool;
        Ok(self.parsed_eq_literal.borrow())
    }
}
impl StrLiteralsLatin1 {
    pub fn len_parsed(&self) -> Ref<'_, u16> {
        self.len_parsed.borrow()
    }
}
impl StrLiteralsLatin1 {
    pub fn parsed(&self) -> Ref<'_, String> {
        self.parsed.borrow()
    }
}
impl StrLiteralsLatin1 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
