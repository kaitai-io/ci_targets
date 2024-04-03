<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ImportsCastToImported extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ImportsCastToImported $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_hw = new \Kaitai\Struct\Tests\HelloWorld($this->_io);
            $this->_m_two = new \Kaitai\Struct\Tests\CastToImported($this->hw(), $this->_io);
        }
        protected $_m_hw;
        protected $_m_two;
        public function hw() { return $this->_m_hw; }
        public function two() { return $this->_m_two; }
    }
}
