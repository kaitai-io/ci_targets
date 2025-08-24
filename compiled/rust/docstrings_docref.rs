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
 * Another one-liner
 * \sa http://www.example.com/some/path/?even_with=query&more=2 Source
 */

#[derive(Default, Debug, Clone)]
pub struct DocstringsDocref {
    pub _root: SharedType<DocstringsDocref>,
    pub _parent: SharedType<DocstringsDocref>,
    pub _self: SharedType<Self>,
    one: RefCell<u8>,
    two: RefCell<u8>,
    three: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_foo: Cell<bool>,
    foo: RefCell<bool>,
    f_parse_inst: Cell<bool>,
    parse_inst: RefCell<u8>,
}
impl KStruct for DocstringsDocref {
    type Root = DocstringsDocref;
    type Parent = DocstringsDocref;

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
        *self_rc.two.borrow_mut() = _io.read_u1()?.into();
        *self_rc.three.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl DocstringsDocref {

    /**
     * \sa Doc ref for instance, a plain one
     */
    pub fn foo(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_foo.get() {
            return Ok(self.foo.borrow());
        }
        self.f_foo.set(true);
        *self.foo.borrow_mut() = (true) as bool;
        Ok(self.foo.borrow())
    }

    /**
     * \sa Now this is a really
     * long document ref that
     * spans multiple lines.
     */
    pub fn parse_inst(
        &self
    ) -> KResult<Ref<'_, u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_parse_inst.get() {
            return Ok(self.parse_inst.borrow());
        }
        self.f_parse_inst.set(true);
        let _pos = _io.pos();
        _io.seek(0 as usize)?;
        *self.parse_inst.borrow_mut() = _io.read_u1()?.into();
        _io.seek(_pos)?;
        Ok(self.parse_inst.borrow())
    }
}

/**
 * \sa Plain text description of doc ref, page 42
 */
impl DocstringsDocref {
    pub fn one(&self) -> Ref<'_, u8> {
        self.one.borrow()
    }
}

/**
 * Both doc and doc-ref are defined
 * \sa http://www.example.com/with/url/again Source
 */
impl DocstringsDocref {
    pub fn two(&self) -> Ref<'_, u8> {
        self.two.borrow()
    }
}

/**
 * \sa http://www.example.com/three Documentation name
 */
impl DocstringsDocref {
    pub fn three(&self) -> Ref<'_, u8> {
        self.three.borrow()
    }
}
impl DocstringsDocref {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
