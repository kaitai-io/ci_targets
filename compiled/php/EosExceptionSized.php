<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class EosExceptionSized extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\EosExceptionSized $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_envelope = $this->_io->readBytes(6);
            $_io__raw_envelope = new \Kaitai\Struct\Stream($this->_m__raw_envelope);
            $this->_m_envelope = new \Kaitai\Struct\Tests\EosExceptionSized\Data($_io__raw_envelope, $this, $this->_root);
        }
        protected $_m_envelope;
        protected $_m__raw_envelope;
        public function envelope() { return $this->_m_envelope; }
        public function _raw_envelope() { return $this->_m__raw_envelope; }
    }
}

namespace Kaitai\Struct\Tests\EosExceptionSized {
    class Data extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\EosExceptionSized $_parent = null, \Kaitai\Struct\Tests\EosExceptionSized $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_buf = $this->_io->readBytes(7);
            $_io__raw_buf = new \Kaitai\Struct\Stream($this->_m__raw_buf);
            $this->_m_buf = new \Kaitai\Struct\Tests\EosExceptionSized\Foo($_io__raw_buf, $this, $this->_root);
        }
        protected $_m_buf;
        protected $_m__raw_buf;
        public function buf() { return $this->_m_buf; }
        public function _raw_buf() { return $this->_m__raw_buf; }
    }
}

namespace Kaitai\Struct\Tests\EosExceptionSized {
    class Foo extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\EosExceptionSized\Data $_parent = null, \Kaitai\Struct\Tests\EosExceptionSized $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
    }
}
