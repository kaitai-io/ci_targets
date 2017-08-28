// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatUntilSized : KaitaiStruct
    {
        public static RepeatUntilSized FromFile(string fileName)
        {
            return new RepeatUntilSized(new KaitaiStream(fileName));
        }

        public RepeatUntilSized(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatUntilSized p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_records = new List<byte[]>();
            _records = new List<Record>();
            {
                var i = 0;
                Record M_;
                do {
                    byte[] M_Buf = m_io.ReadBytes(5);
                    __raw_records.Add(M_Buf);
                    var io___raw_records = new KaitaiStream(M_Buf);
                    M_ = new Record(io___raw_records, this, m_root);
                    _records.Add(M_);
                    i++;
                } while (!(M_.Marker == 170));
            }
        }
        public partial class Record : KaitaiStruct
        {
            public static Record FromFile(string fileName)
            {
                return new Record(new KaitaiStream(fileName));
            }

            public Record(KaitaiStream p__io, RepeatUntilSized p__parent = null, RepeatUntilSized p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _marker = m_io.ReadU1();
                _body = m_io.ReadU4le();
            }
            private byte _marker;
            private uint _body;
            private RepeatUntilSized m_root;
            private RepeatUntilSized m_parent;
            public byte Marker { get { return _marker; } }
            public uint Body { get { return _body; } }
            public RepeatUntilSized M_Root { get { return m_root; } }
            public RepeatUntilSized M_Parent { get { return m_parent; } }
        }
        private List<Record> _records;
        private RepeatUntilSized m_root;
        private KaitaiStruct m_parent;
        private List<byte[]> __raw_records;
        public List<Record> Records { get { return _records; } }
        public RepeatUntilSized M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public List<byte[]> M_RawRecords { get { return __raw_records; } }
    }
}
