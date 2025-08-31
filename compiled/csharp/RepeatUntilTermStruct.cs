// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatUntilTermStruct : KaitaiStruct
    {
        public static RepeatUntilTermStruct FromFile(string fileName)
        {
            return new RepeatUntilTermStruct(new KaitaiStream(fileName));
        }

        public RepeatUntilTermStruct(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatUntilTermStruct p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_records1 = new List<byte[]>();
            _records1 = new List<BytesWrapper>();
            {
                var i = 0;
                BytesWrapper M_;
                do {
                    byte[] M_Buf = m_io.ReadBytesTerm(170, false, true, true);
                    __raw_records1.Add(M_Buf);
                    var io___raw_records1 = new KaitaiStream(M_Buf);
                    M_ = new BytesWrapper(io___raw_records1, this, m_root);
                    _records1.Add(M_);
                    i++;
                } while (!(M_.Value.Length == 0));
            }
            __raw_records2 = new List<byte[]>();
            _records2 = new List<BytesWrapper>();
            {
                var i = 0;
                BytesWrapper M_;
                do {
                    byte[] M_Buf = m_io.ReadBytesTerm(170, true, true, true);
                    __raw_records2.Add(M_Buf);
                    var io___raw_records2 = new KaitaiStream(M_Buf);
                    M_ = new BytesWrapper(io___raw_records2, this, m_root);
                    _records2.Add(M_);
                    i++;
                } while (!((KaitaiStream.ByteArrayCompare(M_.Value, new byte[] { 170 }) != 0)));
            }
            __raw_records3 = new List<byte[]>();
            _records3 = new List<BytesWrapper>();
            {
                var i = 0;
                BytesWrapper M_;
                do {
                    byte[] M_Buf = m_io.ReadBytesTerm(85, false, false, true);
                    __raw_records3.Add(M_Buf);
                    var io___raw_records3 = new KaitaiStream(M_Buf);
                    M_ = new BytesWrapper(io___raw_records3, this, m_root);
                    _records3.Add(M_);
                    i++;
                } while (!((KaitaiStream.ByteArrayCompare(M_.Value, Records1[Records1.Count - 1].Value) == 0)));
            }
        }
        public partial class BytesWrapper : KaitaiStruct
        {
            public static BytesWrapper FromFile(string fileName)
            {
                return new BytesWrapper(new KaitaiStream(fileName));
            }

            public BytesWrapper(KaitaiStream p__io, RepeatUntilTermStruct p__parent = null, RepeatUntilTermStruct p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _value = m_io.ReadBytesFull();
            }
            private byte[] _value;
            private RepeatUntilTermStruct m_root;
            private RepeatUntilTermStruct m_parent;
            public byte[] Value { get { return _value; } }
            public RepeatUntilTermStruct M_Root { get { return m_root; } }
            public RepeatUntilTermStruct M_Parent { get { return m_parent; } }
        }
        private List<BytesWrapper> _records1;
        private List<BytesWrapper> _records2;
        private List<BytesWrapper> _records3;
        private RepeatUntilTermStruct m_root;
        private KaitaiStruct m_parent;
        private List<byte[]> __raw_records1;
        private List<byte[]> __raw_records2;
        private List<byte[]> __raw_records3;
        public List<BytesWrapper> Records1 { get { return _records1; } }
        public List<BytesWrapper> Records2 { get { return _records2; } }
        public List<BytesWrapper> Records3 { get { return _records3; } }
        public RepeatUntilTermStruct M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public List<byte[]> M_RawRecords1 { get { return __raw_records1; } }
        public List<byte[]> M_RawRecords2 { get { return __raw_records2; } }
        public List<byte[]> M_RawRecords3 { get { return __raw_records3; } }
    }
}
