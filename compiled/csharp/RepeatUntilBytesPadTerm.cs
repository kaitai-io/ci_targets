// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatUntilBytesPadTerm : KaitaiStruct
    {
        public static RepeatUntilBytesPadTerm FromFile(string fileName)
        {
            return new RepeatUntilBytesPadTerm(new KaitaiStream(fileName));
        }

        public RepeatUntilBytesPadTerm(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatUntilBytesPadTerm p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _records = new List<byte[]>();
            {
                var i = 0;
                byte[] M_;
                do {
                    M_ = KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(5), 170), 85, true);
                    _records.Add(M_);
                    i++;
                } while (!((KaitaiStream.ByteArrayCompare(M_, new byte[] { 170, 85 }) == 0)));
            }
        }
        public List<byte[]> Records { get { return _records; } }
        public RepeatUntilBytesPadTerm M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private List<byte[]> _records;
        private RepeatUntilBytesPadTerm m_root;
        private KaitaiStruct m_parent;
    }
}
