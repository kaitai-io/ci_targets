<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class EosExceptionU4 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\EosExceptionU4 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_envelope = $this->_io->readBytes(6);
            $_io__raw_envelope = new \Kaitai\Struct\Stream($this->_m__raw_envelope);
            $this->_m_envelope = new \Kaitai\Struct\Tests\EosExceptionU4\Data($_io__raw_envelope, $this, $this->_root);
        }
        protected $_m_envelope;
        protected $_m__raw_envelope;
        public function envelope() { return $this->_m_envelope; }
        public function _raw_envelope() { return $this->_m__raw_envelope; }
    }
}

namespace Kaitai\Struct\Tests\EosExceptionU4 {
    class Data extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\EosExceptionU4 $_parent = null, ?\Kaitai\Struct\Tests\EosExceptionU4 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_prebuf = $this->_io->readBytes(3);
            $this->_m_failInt = $this->_io->readU4le();
        }
        protected $_m_prebuf;
        protected $_m_failInt;
        public function prebuf() { return $this->_m_prebuf; }
        public function failInt() { return $this->_m_failInt; }
    }
}
