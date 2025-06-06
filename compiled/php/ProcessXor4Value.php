<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ProcessXor4Value extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ProcessXor4Value $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_key = $this->_io->readBytes(4);
            $this->_m__raw_buf = $this->_io->readBytesFull();
            $this->_m_buf = \Kaitai\Struct\Stream::processXorMany($this->_m__raw_buf, $this->key());
        }
        protected $_m_key;
        protected $_m_buf;
        protected $_m__raw_buf;
        public function key() { return $this->_m_key; }
        public function buf() { return $this->_m_buf; }
        public function _raw_buf() { return $this->_m__raw_buf; }
    }
}
