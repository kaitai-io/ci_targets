<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class EosExceptionBytes extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\EosExceptionBytes $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_envelope = $this->_io->readBytes(6);
            $_io__raw_envelope = new \Kaitai\Struct\Stream($this->_m__raw_envelope);
            $this->_m_envelope = new \Kaitai\Struct\Tests\EosExceptionBytes\Data($_io__raw_envelope, $this, $this->_root);
        }
        protected $_m_envelope;
        protected $_m__raw_envelope;
        public function envelope() { return $this->_m_envelope; }
        public function _raw_envelope() { return $this->_m__raw_envelope; }
    }
}

namespace Kaitai\Struct\Tests\EosExceptionBytes {
    class Data extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\EosExceptionBytes $_parent = null, \Kaitai\Struct\Tests\EosExceptionBytes $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_buf = $this->_io->readBytes(7);
        }
        protected $_m_buf;
        public function buf() { return $this->_m_buf; }
    }
}
