<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class RepeatNTermBytes extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\RepeatNTermBytes $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_records1 = [];
            $n = 2;
            for ($i = 0; $i < $n; $i++) {
                $this->_m_records1[] = $this->_io->readBytesTerm(170, false, true, true);
            }
            $this->_m_records2 = [];
            $n = 2;
            for ($i = 0; $i < $n; $i++) {
                $this->_m_records2[] = $this->_io->readBytesTerm(170, true, true, true);
            }
            $this->_m_records3 = [];
            $n = 2;
            for ($i = 0; $i < $n; $i++) {
                $this->_m_records3[] = $this->_io->readBytesTerm(85, false, false, true);
            }
        }
        protected $_m_records1;
        protected $_m_records2;
        protected $_m_records3;
        public function records1() { return $this->_m_records1; }
        public function records2() { return $this->_m_records2; }
        public function records3() { return $this->_m_records3; }
    }
}
