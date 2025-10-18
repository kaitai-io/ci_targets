<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class RepeatUntilTermBytes extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\RepeatUntilTermBytes $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_records1 = [];
            $i = 0;
            do {
                $_ = $this->_io->readBytesTerm(170, false, true, true);
                $this->_m_records1[] = $_;
                $i++;
            } while (!(strlen($_) == 0));
            $this->_m_records2 = [];
            $i = 0;
            do {
                $_ = $this->_io->readBytesTerm(170, true, true, true);
                $this->_m_records2[] = $_;
                $i++;
            } while (!($_ != "\xAA"));
            $this->_m_records3 = [];
            $i = 0;
            do {
                $_ = $this->_io->readBytesTerm(85, false, false, true);
                $this->_m_records3[] = $_;
                $i++;
            } while (!($_ == $this->records1()[count($this->records1()) - 1]));
        }
        public function records1() { return $this->_m_records1; }
        public function records2() { return $this->_m_records2; }
        public function records3() { return $this->_m_records3; }
        protected $_m_records1;
        protected $_m_records2;
        protected $_m_records3;
    }
}
