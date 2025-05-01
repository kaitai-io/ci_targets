<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidOptionalId extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ValidOptionalId $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__unnamed0 = $this->_io->readBytes(6);
            if (!($this->_m__unnamed0 == "\x50\x41\x43\x4B\x2D\x31")) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError("\x50\x41\x43\x4B\x2D\x31", $this->_m__unnamed0, $this->_io, "/seq/0");
            }
            $this->_m__unnamed1 = $this->_io->readU1();
            if (!($this->_m__unnamed1 == 255)) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError(255, $this->_m__unnamed1, $this->_io, "/seq/1");
            }
            $this->_m__unnamed2 = $this->_io->readS1();
            $_ = $this->_m__unnamed2;
            if (!($_ == -1)) {
                throw new \Kaitai\Struct\Error\ValidationExprError($this->_m__unnamed2, $this->_io, "/seq/2");
            }
        }
        protected $_m__unnamed0;
        protected $_m__unnamed1;
        protected $_m__unnamed2;
        public function _unnamed0() { return $this->_m__unnamed0; }
        public function _unnamed1() { return $this->_m__unnamed1; }
        public function _unnamed2() { return $this->_m__unnamed2; }
    }
}
