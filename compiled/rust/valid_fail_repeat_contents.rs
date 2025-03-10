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
pub struct ValidFailRepeatContents {
    pub _root: SharedType<ValidFailRepeatContents>,
    pub _parent: SharedType<ValidFailRepeatContents>,
    pub _self: SharedType<Self>,
    foo: RefCell<Vec<Vec<u8>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ValidFailRepeatContents {
    type Root = ValidFailRepeatContents;
    type Parent = ValidFailRepeatContents;

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
        *self_rc.foo.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while !_io.is_eof() {
                self_rc.foo.borrow_mut().push(_io.read_bytes(4 as usize)?.into());
                if !(self_rc.foo()[_i as usize] == vec![0x12u8, 0x34u8, 0x56u8, 0x78u8]) {
                    return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/0".to_string() }));
                }
                _i += 1;
            }
        }
        Ok(())
    }
}
impl ValidFailRepeatContents {
}
impl ValidFailRepeatContents {
    pub fn foo(&self) -> Ref<Vec<Vec<u8>>> {
        self.foo.borrow()
    }
}
impl ValidFailRepeatContents {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
