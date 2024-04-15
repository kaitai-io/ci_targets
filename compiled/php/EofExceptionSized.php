<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class EofExceptionSized extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\EofExceptionSized $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_buf = $this->_io->readBytes(13);
            $_io__raw_buf = new \Kaitai\Struct\Stream($this->_m__raw_buf);
            $this->_m_buf = new \Kaitai\Struct\Tests\EofExceptionSized\Foo($_io__raw_buf, $this, $this->_root);
        }
        protected $_m_buf;
        protected $_m__raw_buf;
        public function buf() { return $this->_m_buf; }
        public function _raw_buf() { return $this->_m__raw_buf; }
    }
}

namespace Kaitai\Struct\Tests\EofExceptionSized {
    class Foo extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\EofExceptionSized $_parent = null, \Kaitai\Struct\Tests\EofExceptionSized $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
    }
}
