<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ImportsCircularA extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ImportsCircularA $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_code = $this->_io->readU1();
            $this->_m_two = new \Kaitai\Struct\Tests\ImportsCircularB($this->_io);
        }
        protected $_m_code;
        protected $_m_two;
        public function code() { return $this->_m_code; }
        public function two() { return $this->_m_two; }
    }
}
