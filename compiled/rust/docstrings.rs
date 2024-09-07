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

/**
 * One-liner description of a type.
 */

#[derive(Default, Debug, Clone)]
pub struct Docstrings {
    pub _root: SharedType<Docstrings>,
    pub _parent: SharedType<Docstrings>,
    pub _self: SharedType<Self>,
    one: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_three: Cell<bool>,
    three: RefCell<i8>,
    f_two: Cell<bool>,
    two: RefCell<u8>,
}
impl KStruct for Docstrings {
    type Root = Docstrings;
    type Parent = Docstrings;

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
        *self_rc.one.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl Docstrings {

    /**
     * And yet another one for value instance "three"
     */
    pub fn three(
        &self
    ) -> KResult<Ref<i8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_three.get() {
            return Ok(self.three.borrow());
        }
        self.f_three.set(true);
        *self.three.borrow_mut() = (66) as i8;
        Ok(self.three.borrow())
    }

    /**
     * Another description for parse instance "two"
     */
    pub fn two(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_two.get() {
            return Ok(self.two.borrow());
        }
        self.f_two.set(true);
        let _pos = _io.pos();
        _io.seek(0 as usize)?;
        *self.two.borrow_mut() = _io.read_u1()?.into();
        _io.seek(_pos)?;
        Ok(self.two.borrow())
    }
}

/**
 * A pretty verbose description for sequence attribute "one"
 */
impl Docstrings {
    pub fn one(&self) -> Ref<u8> {
        self.one.borrow()
    }
}
impl Docstrings {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

/**
 * This subtype is never used, yet has a very long description
 * that spans multiple lines. It should be formatted accordingly,
 * even in languages that have single-line comments for
 * docstrings. Actually, there's even a MarkDown-style list here
 * with several bullets:
 * 
 * * one
 * * two
 * * three
 * 
 * And the text continues after that. Here's a MarkDown-style link:
 * [woohoo](http://example.com) - one day it will be supported as
 * well.
 */

#[derive(Default, Debug, Clone)]
pub struct Docstrings_ComplexSubtype {
    pub _root: SharedType<Docstrings>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for Docstrings_ComplexSubtype {
    type Root = Docstrings;
    type Parent = KStructUnit;

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
impl Docstrings_ComplexSubtype {
}
impl Docstrings_ComplexSubtype {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
