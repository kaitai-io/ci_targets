<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

/**
 * describes the first 4 header bytes of a TS Packet header
 */

namespace Kaitai\Struct\Tests {
    class TsPacketHeader extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\TsPacketHeader $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_syncByte = $this->_io->readU1();
            $this->_m_transportErrorIndicator = $this->_io->readBitsIntBe(1) != 0;
            $this->_m_payloadUnitStartIndicator = $this->_io->readBitsIntBe(1) != 0;
            $this->_m_transportPriority = $this->_io->readBitsIntBe(1) != 0;
            $this->_m_pid = $this->_io->readBitsIntBe(13);
            $this->_m_transportScramblingControl = $this->_io->readBitsIntBe(2);
            $this->_m_adaptationFieldControl = $this->_io->readBitsIntBe(2);
            $this->_m_continuityCounter = $this->_io->readBitsIntBe(4);
            $this->_io->alignToByte();
            $this->_m_tsPacketRemain = $this->_io->readBytes(184);
        }
        protected $_m_syncByte;
        protected $_m_transportErrorIndicator;
        protected $_m_payloadUnitStartIndicator;
        protected $_m_transportPriority;
        protected $_m_pid;
        protected $_m_transportScramblingControl;
        protected $_m_adaptationFieldControl;
        protected $_m_continuityCounter;
        protected $_m_tsPacketRemain;
        public function syncByte() { return $this->_m_syncByte; }
        public function transportErrorIndicator() { return $this->_m_transportErrorIndicator; }
        public function payloadUnitStartIndicator() { return $this->_m_payloadUnitStartIndicator; }
        public function transportPriority() { return $this->_m_transportPriority; }
        public function pid() { return $this->_m_pid; }
        public function transportScramblingControl() { return $this->_m_transportScramblingControl; }
        public function adaptationFieldControl() { return $this->_m_adaptationFieldControl; }
        public function continuityCounter() { return $this->_m_continuityCounter; }
        public function tsPacketRemain() { return $this->_m_tsPacketRemain; }
    }
}

namespace Kaitai\Struct\Tests\TsPacketHeader {
    class AdaptationFieldControlEnum {
        const RESERVED = 0;
        const PAYLOAD_ONLY = 1;
        const ADAPTATION_FIELD_ONLY = 2;
        const ADAPTATION_FIELD_AND_PAYLOAD = 3;

        private const _VALUES = [0 => true, 1 => true, 2 => true, 3 => true];

        public static function isDefined(int $v): bool {
            return isset(self::_VALUES[$v]);
        }
    }
}
