<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ProcessCustomNoArgs extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ProcessCustomNoArgs $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_buf = $this->_io->readBytes(5);
            $_process = new CustomFxNoArgs();
            $this->_m_buf = $_process->decode($this->_m__raw_buf);
        }
        protected $_m_buf;
        protected $_m__raw_buf;
        public function buf() { return $this->_m_buf; }
        public function _raw_buf() { return $this->_m__raw_buf; }
    }
}
