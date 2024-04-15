<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class RepeatUntilCalcArrayType extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\RepeatUntilCalcArrayType $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_records = [];
            $this->_m_records = [];
            $i = 0;
            do {
                $_buf = $this->_io->readBytes(5);
                $this->_m__raw_records[] = $_buf;
                $_io__raw_records = new \Kaitai\Struct\Stream($_buf);
                $_ = new \Kaitai\Struct\Tests\RepeatUntilCalcArrayType\Record($_io__raw_records, $this, $this->_root);
                $this->_m_records[] = $_;
                $i++;
            } while (!($_->marker() == 170));
        }
        protected $_m_firstRec;
        public function firstRec() {
            if ($this->_m_firstRec !== null)
                return $this->_m_firstRec;
            $this->_m_firstRec = $this->recsAccessor()[0];
            return $this->_m_firstRec;
        }
        protected $_m_recsAccessor;
        public function recsAccessor() {
            if ($this->_m_recsAccessor !== null)
                return $this->_m_recsAccessor;
            $this->_m_recsAccessor = $this->records();
            return $this->_m_recsAccessor;
        }
        protected $_m_records;
        protected $_m__raw_records;
        public function records() { return $this->_m_records; }
        public function _raw_records() { return $this->_m__raw_records; }
    }
}

namespace Kaitai\Struct\Tests\RepeatUntilCalcArrayType {
    class Record extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\RepeatUntilCalcArrayType $_parent = null, \Kaitai\Struct\Tests\RepeatUntilCalcArrayType $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_marker = $this->_io->readU1();
            $this->_m_body = $this->_io->readU4le();
        }
        protected $_m_marker;
        protected $_m_body;
        public function marker() { return $this->_m_marker; }
        public function body() { return $this->_m_body; }
    }
}
