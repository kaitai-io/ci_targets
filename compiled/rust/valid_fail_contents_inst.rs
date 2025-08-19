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
pub struct ValidFailContentsInst {
    pub _root: SharedType<ValidFailContentsInst>,
    pub _parent: SharedType<ValidFailContentsInst>,
    pub _self: SharedType<Self>,
    a: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
    f_foo: Cell<bool>,
    foo: RefCell<Vec<u8>>,
}
impl KStruct for ValidFailContentsInst {
    type Root = ValidFailContentsInst;
    type Parent = ValidFailContentsInst;

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
        if ((self_rc.foo()?.len() as i32) == (0 as i32)) {
            *self_rc.a.borrow_mut() = _io.read_bytes(0 as usize)?.into();
        }
        Ok(())
    }
}
impl ValidFailContentsInst {
    pub fn foo(
        &self
    ) -> KResult<Ref<Vec<u8>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_foo.get() {
            return Ok(self.foo.borrow());
        }
        self.f_foo.set(true);
        let _pos = _io.pos();
        _io.seek(0 as usize)?;
        *self.foo.borrow_mut() = _io.read_bytes(2 as usize)?.into();
        if !(*self.foo()? == vec![0x51u8, 0x41u8]) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/instances/foo".to_string() }));
        }
        _io.seek(_pos)?;
        Ok(self.foo.borrow())
    }
}
impl ValidFailContentsInst {
    pub fn a(&self) -> Ref<Vec<u8>> {
        self.a.borrow()
    }
}
impl ValidFailContentsInst {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
