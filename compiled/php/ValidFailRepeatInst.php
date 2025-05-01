<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidFailRepeatInst extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ValidFailRepeatInst $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            if (count($this->inst()) == 0) {
                $this->_m_a = $this->_io->readBytes(0);
            }
        }
        protected $_m_inst;
        public function inst() {
            if ($this->_m_inst !== null)
                return $this->_m_inst;
            $_pos = $this->_io->pos();
            $this->_io->seek(0);
            $this->_m_inst = [];
            $i = 0;
            while (!$this->_io->isEof()) {
                $this->_m_inst[] = $this->_io->readU4be();
                if (!($this->_m_inst[$i] == 305419896)) {
                    throw new \Kaitai\Struct\Error\ValidationNotEqualError(305419896, $this->_m_inst[$i], $this->_io, "/instances/inst");
                }
                $i++;
            }
            $this->_io->seek($_pos);
            return $this->_m_inst;
        }
        protected $_m_a;
        public function a() { return $this->_m_a; }
    }
}
