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
pub struct ValidFailRepeatInst {
    pub _root: SharedType<ValidFailRepeatInst>,
    pub _parent: SharedType<ValidFailRepeatInst>,
    pub _self: SharedType<Self>,
    a: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
    f_inst: Cell<bool>,
    inst: RefCell<Vec<u32>>,
}
impl KStruct for ValidFailRepeatInst {
    type Root = ValidFailRepeatInst;
    type Parent = ValidFailRepeatInst;

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
        if ((self_rc.inst()?.len() as i32) == (0 as i32)) {
            *self_rc.a.borrow_mut() = _io.read_bytes(0 as usize)?.into();
        }
        Ok(())
    }
}
impl ValidFailRepeatInst {
    pub fn inst(
        &self
    ) -> KResult<Ref<Vec<u32>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_inst.get() {
            return Ok(self.inst.borrow());
        }
        self.f_inst.set(true);
        let _pos = _io.pos();
        _io.seek(0 as usize)?;
        *self.inst.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while !_io.is_eof() {
                self.inst.borrow_mut().push(_io.read_u4be()?.into());
                if !(((self.inst()?[_i as usize] as i32) == (305419896 as i32))) {
                    return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/instances/inst".to_string() }));
                }
                _i += 1;
            }
        }
        _io.seek(_pos)?;
        Ok(self.inst.borrow())
    }
}
impl ValidFailRepeatInst {
    pub fn a(&self) -> Ref<Vec<u8>> {
        self.a.borrow()
    }
}
impl ValidFailRepeatInst {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
