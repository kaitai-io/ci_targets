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
pub struct ValidFailInst {
    pub _root: SharedType<ValidFailInst>,
    pub _parent: SharedType<ValidFailInst>,
    pub _self: SharedType<Self>,
    a: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_inst: Cell<bool>,
    inst: RefCell<u8>,
}
impl KStruct for ValidFailInst {
    type Root = ValidFailInst;
    type Parent = ValidFailInst;

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
        if ((*self_rc.inst()? as u8) >= (0 as u8)) {
            *self_rc.a.borrow_mut() = _io.read_u1()?.into();
        }
        Ok(())
    }
}
impl ValidFailInst {
    pub fn inst(
        &self
    ) -> KResult<Ref<'_, u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_inst.get() {
            return Ok(self.inst.borrow());
        }
        self.f_inst.set(true);
        let _pos = _io.pos();
        _io.seek(5 as usize)?;
        *self.inst.borrow_mut() = _io.read_u1()?.into();
        if !(((*self.inst()? as u8) == (80 as u8))) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/instances/inst".to_string() }));
        }
        _io.seek(_pos)?;
        Ok(self.inst.borrow())
    }
}
impl ValidFailInst {
    pub fn a(&self) -> Ref<'_, u8> {
        self.a.borrow()
    }
}
impl ValidFailInst {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
