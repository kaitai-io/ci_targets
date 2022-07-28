<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class InstanceUserArray extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\InstanceUserArray $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_ofs = $this->_io->readU4le();
            $this->_m_entrySize = $this->_io->readU4le();
            $this->_m_qtyEntries = $this->_io->readU4le();
        }
        protected $_m_userEntries;
        public function userEntries() {
            if ($this->_m_userEntries !== null)
                return $this->_m_userEntries;
            if ($this->ofs() > 0) {
                $_pos = $this->_io->pos();
                $this->_io->seek($this->ofs());
                $this->_m__raw_userEntries = [];
                $this->_m_userEntries = [];
                $n = $this->qtyEntries();
                for ($i = 0; $i < $n; $i++) {
                    $this->_m__raw_userEntries = $this->_io->readBytes($this->entrySize());
                    $_io__raw_userEntries = new \Kaitai\Struct\Stream($this->_m__raw_userEntries);
                    $this->_m_userEntries[] = new \Kaitai\Struct\Tests\InstanceUserArray\Entry($_io__raw_userEntries, $this, $this->_root);
                }
                $this->_io->seek($_pos);
            }
            return $this->_m_userEntries;
        }
        protected $_m_ofs;
        protected $_m_entrySize;
        protected $_m_qtyEntries;
        protected $_m__raw_userEntries;
        public function ofs() { return $this->_m_ofs; }
        public function entrySize() { return $this->_m_entrySize; }
        public function qtyEntries() { return $this->_m_qtyEntries; }
        public function _raw_userEntries() { return $this->_m__raw_userEntries; }
    }
}

namespace Kaitai\Struct\Tests\InstanceUserArray {
    class Entry extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\InstanceUserArray $_parent = null, \Kaitai\Struct\Tests\InstanceUserArray $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_word1 = $this->_io->readU2le();
            $this->_m_word2 = $this->_io->readU2le();
        }
        protected $_m_word1;
        protected $_m_word2;
        public function word1() { return $this->_m_word1; }
        public function word2() { return $this->_m_word2; }
    }
}
